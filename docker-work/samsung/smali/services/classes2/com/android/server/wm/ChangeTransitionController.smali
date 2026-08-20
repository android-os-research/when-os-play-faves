.class public Lcom/android/server/wm/ChangeTransitionController;
.super Ljava/lang/Object;
.source "ChangeTransitionController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ChangeTransitionController$H;,
        Lcom/android/server/wm/ChangeTransitionController$ChangeTransitState;
    }
.end annotation


# static fields
.field public static final CHANGE_TRANSIT_STATE_NONE:I = 0x0

.field public static final CHANGE_TRANSIT_STATE_PREPARE:I = 0x1

.field public static final CHANGE_TRANSIT_STATE_READY:I = 0x2

.field public static final CHANGE_TRANSIT_TIMEOUT_MS:I = 0xbb8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final FREEFORM_CORNER_RADIUS_IN_DP:I = 0x6

.field public static final FREEZE_DISPLAY_TIMEOUT_MS:I = 0xbb8

.field public static final SPLIT_CORNER_RADIUS_IN_DP:I = 0xc

.field public static final TAG:Ljava/lang/String; = "ChangeTransitionController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mFinishingNoAnimContainer:Lcom/android/server/wm/WindowContainer;

.field public mFreezingDisplay:Z

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/ChangeTransitionController$H;

.field public mRecentsAnimationFinishing:Z

.field public final mSiblingToDismissingTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I
    .annotation build Lcom/android/server/wm/ChangeTransitionController$ChangeTransitState;
    .end annotation
.end field

.field public mSwitchingSplitScreen:Z

.field public final mSyncAllDrawnApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncAppCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public mTransitionController:Lcom/android/server/wm/TransitionController;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$DvdilJXFbXC3nvez28vwW99LCfc(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ChangeTransitionController;->lambda$shouldFreezeDisplay$6(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HRN2shp3fDwTU-qJSyG4wN9bzUI(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->lambda$redrawTask$5(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPkYOJbzWpfUxGm3bhSIhMPFmzs(Lcom/android/server/wm/ChangeTransitionController;Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ChangeTransitionController;->lambda$handleMovingSplitTaskToPinned$3(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xns-Rv48rGEUYzfMgEcyGkGyx1U(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->lambda$handleMovingSplitTaskToPinned$2(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XvTyjBAcSLuakZK42i40IVrrG6U(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->lambda$isRecentAppAppsTask$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YzDr4YcQDz0BEZucFHgIId5Ut8U(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->lambda$startChangeTransitionForRootTask$4(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zpcO801DqfuAIgkStwmXcOv_tW0(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ChangeTransitionController;->lambda$startMultiSplitEnterTransitIfPossible$1(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/ChangeTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 84
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    .line 125
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    .line 126
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    .line 131
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSwitchingSplitScreen:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mRecentsAnimationFinishing:Z

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 150
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static getFreeformCornerRadius(Landroid/util/DisplayMetrics;)F
    .registers 2

    const/4 v0, 0x6

    .line 1024
    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getSplitCornerRadius(Landroid/util/DisplayMetrics;)F
    .registers 2

    const/16 v0, 0xc

    .line 1020
    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static synthetic lambda$handleMovingSplitTaskToPinned$2(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 654
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$handleMovingSplitTaskToPinned$3(Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 6

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMovingSplitTaskToPinned: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChangeTransitionController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 648
    invoke-virtual {p3, p2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 650
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_1c

    .line 653
    :cond_39
    new-instance v0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    .line 656
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy(Z)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_1c

    .line 659
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    const/4 p2, 0x6

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2, v1, v1}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_58
    return-void
.end method

.method public static synthetic lambda$isRecentAppAppsTask$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 480
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRecentAllAppsActivity()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$redrawTask$5(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    .line 729
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v0, :cond_1d

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_1d
    return-void
.end method

.method public static synthetic lambda$shouldFreezeDisplay$6(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 885
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 888
    :cond_8
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->hasWallpaperBackgroudForLetterbox()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    if-nez p0, :cond_1b

    .line 891
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_1b

    if-ne p3, p2, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method

.method public static synthetic lambda$startChangeTransitionForRootTask$4(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 669
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$startMultiSplitEnterTransitIfPossible$1(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Z
    .registers 3

    if-eq p2, p0, :cond_a

    .line 513
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ConfigurationContainer;->hasStagePosition(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static needsZBoost(I)Z
    .registers 2
    .param p0    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static selectFreezeAnimations(Z)[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    const p0, 0x10a00a0

    aput p0, v0, v2

    const p0, 0x10a009f

    aput p0, v0, v1

    goto :goto_1c

    :cond_12
    const p0, 0x10a009e

    aput p0, v0, v2

    const p0, 0x10a009d

    aput p0, v0, v1

    :goto_1c
    return-object v0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Lcom/android/server/wm/ChangeTransitionController$ChangeTransitState;
        .end annotation
    .end param

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 1036
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "STATE_READY"

    return-object p0

    :cond_10
    const-string p0, "STATE_PREPARE"

    return-object p0

    :cond_13
    const-string p0, "STATE_NONE"

    return-object p0
.end method


# virtual methods
.method public final addToDismissingTask(ILcom/android/server/wm/Task;)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    .line 390
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_11

    goto :goto_36

    .line 394
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addToDismissingTask: sibling #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dismissing #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 756
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Z)V

    return-void
.end method

.method public addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Z)V
    .registers 7

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 763
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    if-nez v0, :cond_26

    .line 765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addToSyncApps: failed, cannot find main win, r="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 768
    :cond_26
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 769
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    if-eqz p3, :cond_33

    .line 771
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->forceReportingRelayout()V

    .line 773
    :cond_33
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v0, :cond_4c

    .line 774
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addToSyncApps: failed, cannot clear all drawn, r="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 777
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToSyncApps: r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", remains="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", forceRelayout="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->prepareIfPossible()V

    return-void
.end method

.method public addToSyncTasks(ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 739
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToSyncTasks: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remains="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangeTransitionController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->prepareIfPossible()V

    :cond_40
    return-void
.end method

.method public applySyncStagingTypesIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .registers 14

    .line 567
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncStagingTypes()Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 571
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySyncStagingTypesIfNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChangeTransitionController"

    .line 571
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsCallback()Landroid/os/RemoteCallback;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_37

    move v1, v3

    goto :goto_38

    :cond_37
    move v1, v4

    .line 576
    :goto_38
    iget-object v5, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 577
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 578
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsReason()I

    move-result v7

    if-ne v7, v3, :cond_4c

    move v7, v3

    goto :goto_4d

    :cond_4c
    move v7, v4

    .line 579
    :goto_4d
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 581
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_58
    if-ltz v8, :cond_cd

    .line 582
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 583
    invoke-virtual {v6, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_6f

    .line 584
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    goto :goto_70

    :cond_6f
    const/4 v9, 0x0

    :goto_70
    if-nez v9, :cond_87

    .line 586
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applySyncStagingTypesIfNeeded: failed to find top, #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 589
    :cond_87
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    .line 590
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsReason()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c4

    if-eqz v3, :cond_c4

    if-eq v3, v5, :cond_c4

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySyncStagingTypesIfNeeded: skip freeze, diff rotation"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    sget-boolean v3, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz v3, :cond_b6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", r="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b8

    :cond_b6
    const-string v3, ""

    :goto_b8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_ca

    :cond_c4
    const-string/jumbo v3, "remote_sync"

    .line 598
    invoke-virtual {p0, v9, v3, v7}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Z)V

    :goto_ca
    add-int/lit8 v8, v8, -0x1

    goto :goto_58

    .line 600
    :cond_cd
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsCallback()Landroid/os/RemoteCallback;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 601
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getSyncAppsCallback()Landroid/os/RemoteCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->registerSyncAppCallback(Landroid/os/RemoteCallback;)V

    :cond_da
    if-eqz v1, :cond_df

    .line 604
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ChangeTransitionController;->freezeDisplay(Z)V

    :cond_df
    return-void
.end method

.method public clear()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setState(I)V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFinishingNoAnimContainer:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "[ChangeTransitionController]"

    .line 1071
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    invoke-static {v1}, Lcom/android/server/wm/ChangeTransitionController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSyncTaskIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSyncAllDrawnApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    :cond_64
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_85

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mDismissAnimatingTasks="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    :cond_85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final freezeAndUnfreezeDisplay(ZLjava/lang/Runnable;)V
    .registers 8

    const-string v0, "freezeAndUnfreezeDisplay: finish"

    const-string v1, "ChangeTransitionController"

    const-string v2, "freezeAndUnfreezeDisplay: start"

    .line 945
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->selectFreezeAnimations(Z)[I

    move-result-object p1

    .line 947
    iget-object v2, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 949
    :try_start_18
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_24

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 952
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_24
    move-exception p1

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 952
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    throw p1
.end method

.method public freezeDisplay(Z)V
    .registers 5

    .line 907
    iget-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    const-string v1, "ChangeTransitionController"

    if-eqz v0, :cond_c

    const-string p0, "freezeDisplay: failed, already freeze state"

    .line 908
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 911
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p0, "freezeDisplay: failed, not-preparing state"

    .line 912
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 915
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freezeDisplay: all_drawn_remain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 916
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 917
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    .line 918
    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->selectFreezeAnimations(Z)[I

    move-result-object p1

    .line 919
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    aget v2, p1, v2

    aget p1, p1, v0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 920
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final getCellHostStageType(Lcom/android/server/wm/TaskDisplayArea;)I
    .registers 2

    .line 486
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootCellStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 487
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootCellStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p0

    .line 488
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x2

    :goto_22
    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public final getEndBounds(Landroid/graphics/Rect;Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 3

    .line 971
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 972
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 974
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public final getFreezeSyncTarget(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 897
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getHalfStageType(Lcom/android/server/wm/TaskDisplayArea;)I
    .registers 3

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->getCellHostStageType(Lcom/android/server/wm/TaskDisplayArea;)I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    return p1

    :cond_9
    if-ne p0, p1, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getOppositeStagingTypes(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_11
    if-ne p1, p2, :cond_1a

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public handleAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFinishingNoAnimContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_5c

    .line 851
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p1, :cond_5c

    .line 852
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFinishingNoAnimContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 853
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 854
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 856
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 857
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v1, v3, :cond_2a

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    if-eqz v0, :cond_5c

    .line 863
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 864
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 865
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 866
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_5c

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez p1, :cond_5c

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_5c
    return-void
.end method

.method public handleDismissingSplitTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 13

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 331
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSwitchingSplitScreen:Z

    if-eqz v0, :cond_c

    return-void

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const-string v1, "ChangeTransitionController"

    if-nez v0, :cond_2d

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleDismissingSplitTask: skip, reason=shell_request #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDismissingSplitTask: #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v1

    .line 343
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ChangeTransitionController;->getOppositeStagingTypes(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/ArraySet;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5e

    return-void

    :cond_5e
    const/4 v2, 0x0

    .line 350
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_63
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 351
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 352
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v5

    if-nez v5, :cond_81

    goto :goto_63

    .line 355
    :cond_81
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 356
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v6

    if-eqz v6, :cond_8e

    goto :goto_63

    .line 359
    :cond_8e
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ChangeTransitionController;->isRecentAppAppsTask(Lcom/android/server/wm/Task;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_96

    move v2, v7

    :cond_96
    if-eqz v2, :cond_99

    goto :goto_9a

    :cond_99
    move v4, v7

    .line 364
    :goto_9a
    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dismiss_split("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncTasks(ILjava/lang/String;)V

    const-string v6, "dismiss_split"

    .line 367
    invoke-virtual {p0, v3, v4, v7, v6}, Lcom/android/server/wm/ChangeTransitionController;->startChangeTransitionForRootTask(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    .line 370
    iget-object v3, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 371
    iget v3, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ChangeTransitionController;->addToDismissingTask(ILcom/android/server/wm/Task;)V

    goto :goto_63

    .line 375
    :cond_c8
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ed

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v4, 0x2

    .line 379
    :goto_d9
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    .line 380
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ChangeTransitionController;->getEndBounds(Landroid/graphics/Rect;Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v2

    .line 379
    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-string p0, "finish-activity"

    .line 382
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 383
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    :cond_ed
    return-void
.end method

.method public handleDisplayChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 270
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result p2

    if-eqz p2, :cond_50

    iget-boolean p2, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_50

    const/4 p2, 0x0

    .line 272
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    const-string p3, "ChangeTransitionController"

    if-nez p2, :cond_2a

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleDisplayChanged: failed, non-visible state #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_47

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleDisplayChanged: failed, can\'t found activity, #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const-string p1, "exit_app_casting"

    .line 281
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->freezeDisplay(Z)V

    :cond_50
    return-void
.end method

.method public handleFreeformHeaderTypeChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 11

    .line 551
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 554
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 555
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ChangeTransitionController;->getFreeformCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result v7

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 556
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    :cond_20
    return-void
.end method

.method public handleMovingMultiSplitTaskToFreeform(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 526
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 527
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 529
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    if-ne v3, v2, :cond_1b

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 530
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v0, :cond_74

    if-eqz v1, :cond_74

    .line 532
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 533
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_74

    .line 536
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMovingMultiSplitTaskToFreeform: moving #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChangeTransitionController"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ChangeTransitionController;->getOppositeStagingTypes(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/ArraySet;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 539
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 540
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_51

    :cond_6e
    const-string v3, "multisplit_to_freeform"

    .line 543
    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/wm/ChangeTransitionController;->startChangeTransitionForRootTask(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_51

    :cond_74
    :goto_74
    return-void
.end method

.method public handleMovingSplitTaskToPinned(Lcom/android/server/wm/Task;)V
    .registers 8

    .line 631
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 636
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v1

    .line 635
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ChangeTransitionController;->getOppositeStagingTypes(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/ArraySet;

    move-result-object v1

    .line 637
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    move v2, v4

    goto :goto_1a

    :cond_19
    move v2, v3

    .line 638
    :goto_1a
    iget-boolean v5, p0, Lcom/android/server/wm/ChangeTransitionController;->mRecentsAnimationFinishing:Z

    if-nez v5, :cond_39

    .line 639
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    .line 640
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-gt v5, v4, :cond_39

    if-nez v2, :cond_31

    goto :goto_39

    .line 645
    :cond_31
    new-instance v2, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ChangeTransitionController;Lcom/android/server/wm/Task;Landroid/util/ArraySet;Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ChangeTransitionController;->freezeAndUnfreezeDisplay(ZLjava/lang/Runnable;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public handleNaturalSwitchingTaskLocked(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 616
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    return-void

    .line 619
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 620
    iput-object v0, p1, Lcom/android/server/wm/Task;->mNaturalSwitchingBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 621
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 624
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    return-void
.end method

.method public handleOpeningAboveDismissingSplit(Lcom/android/server/wm/Task;Landroid/view/animation/Animation;)V
    .registers 6

    .line 429
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    long-to-float p0, v0

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p0, p2

    float-to-long v0, p0

    .line 430
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 431
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 432
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p2

    if-eqz p2, :cond_2b

    goto :goto_12

    .line 435
    :cond_2b
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p2}, Lcom/android/server/wm/SurfaceFreezer;->changeToDismissTransitMode()V

    .line 436
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p2}, Lcom/android/server/wm/SurfaceFreezer;->isDismissChangeTransitMode()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 437
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iput-wide v0, p2, Lcom/android/server/wm/SurfaceFreezer;->mCustomDuration:J

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOpeningAboveDismissingSplit: #"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dur="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangeTransitionController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_5d
    return-void
.end method

.method public handlePositionTaskBehindHome(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 419
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 422
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePositionTaskBehindHome: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x6

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public handleTaskSizeChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 11

    .line 253
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 256
    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTaskAndShowing(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 259
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTaskSizeChanged: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ChangeTransitionController;->getFreeformCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result v7

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 262
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    :cond_41
    return-void
.end method

.method public handleWindowContainerTransaction(Lcom/android/server/wm/Task;I)V
    .registers 5

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWindowContainerTransaction: root #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "WindowContainerTransaction"

    .line 610
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ChangeTransitionController;->startChangeTransitionForRootTask(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    return-void
.end method

.method public handleWindowingModeChanged(Lcom/android/server/wm/Task;IIIILandroid/graphics/Rect;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    if-eqz p5, :cond_c

    move v6, v5

    goto :goto_d

    :cond_c
    move v6, v4

    :goto_d
    if-eq v2, v3, :cond_dd

    .line 207
    invoke-virtual {p1, v4, v6}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy(ZZ)Z

    move-result v6

    if-eqz v6, :cond_17

    goto/16 :goto_dd

    .line 211
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->shouldFreezeDisplay(Lcom/android/server/wm/Task;)Z

    move-result v6

    const-string v7, "ChangeTransitionController"

    const-string v8, "->"

    if-eqz v6, :cond_5c

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->getFreezeSyncTarget(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_3e

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWindowingModeChanged: failed freezing display, #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(letter-box)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ChangeTransitionController;->freezeDisplay(Z)V

    return-void

    :cond_5c
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x5

    if-eq v2, v11, :cond_95

    if-ne v3, v11, :cond_65

    goto :goto_95

    .line 230
    :cond_65
    iget-boolean v11, v0, Lcom/android/server/wm/ChangeTransitionController;->mSwitchingSplitScreen:Z

    if-eqz v11, :cond_7c

    if-nez p4, :cond_6d

    if-eqz p5, :cond_7c

    .line 234
    :cond_6d
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ChangeTransitionController;->getSplitCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result v4

    const-string/jumbo v10, "split-mode-changed"

    :goto_7a
    move v6, v4

    goto :goto_a4

    :cond_7c
    if-ne v2, v5, :cond_84

    if-eqz p5, :cond_84

    const-string/jumbo v10, "shrunk-by-enter-split"

    goto :goto_a4

    :cond_84
    if-eqz p4, :cond_a3

    if-ne v3, v5, :cond_a3

    .line 241
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ChangeTransitionController;->getSplitCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result v4

    const-string v10, "expanded-by-dismiss-split"

    goto :goto_7a

    :cond_95
    :goto_95
    const/4 v4, 0x3

    .line 229
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/ChangeTransitionController;->getFreeformCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result v5

    const-string v10, "freeform-mode-changed"

    move v6, v5

    :cond_a3
    move v5, v4

    :goto_a4
    if-eqz v5, :cond_dd

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleWindowingModeChanged: #"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move-object/from16 v3, p6

    move-object v4, v9

    move v5, v7

    .line 247
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 155
    new-instance v0, Lcom/android/server/wm/ChangeTransitionController$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ChangeTransitionController$H;-><init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    return-void
.end method

.method public final initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 691
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    return-void
.end method

.method public final initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V
    .registers 19

    move-object v0, p1

    move-object v10, p3

    .line 699
    iget-object v11, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v11, :cond_7

    return-void

    .line 704
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInternalPresentationOnly()Z

    move-result v9

    const/4 v1, 0x6

    .line 706
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 707
    iget-object v1, v11, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-static {p2}, Lcom/android/server/wm/ChangeTransitionController;->needsZBoost(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 709
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    const/4 v1, 0x1

    .line 710
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setAnimatingForChangeTransit(Z)V

    .line 711
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    const/4 v6, 0x0

    move v3, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FZ)V

    if-eqz p5, :cond_3e

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->redrawTask(Lcom/android/server/wm/Task;)V

    .line 716
    :cond_3e
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeChangeTransition: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startBounds="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endBounds="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", radius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", changeTransitMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    .line 718
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isFreezingDisplay()Z
    .registers 1

    .line 938
    iget-boolean p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    return p0
.end method

.method public isPreparing()Z
    .registers 2

    .line 186
    iget p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isReady()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iget p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isRecentAppAppsTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 480
    new-instance p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final notifySyncAppCallbacks()V
    .registers 5

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 810
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySyncAppCallbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChangeTransitionController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 812
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_f

    .line 814
    :cond_36
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onActivityDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 818
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "onActivityDrawn"

    .line 819
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onActivityFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 824
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "onActivityFinished"

    .line 825
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ChangeTransitionController;->removeFromSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onAnimationFinished(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 411
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAnimationFinished: sibling #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public onChangeTransitionCancelled(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 400
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_35

    .line 403
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSiblingToDismissingTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 404
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationCancelled: cancel #"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by #"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_35
    return-void
.end method

.method public onCleanUpRecentsAnimationFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mRecentsAnimationFinishing:Z

    .line 1010
    sget-boolean p0, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "ChangeTransitionController"

    const-string/jumbo v0, "onCleanUpRecentsAnimationFinished"

    .line 1011
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public onCleanUpRecentsAnimationStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 1002
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mRecentsAnimationFinishing:Z

    .line 1003
    sget-boolean p0, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "ChangeTransitionController"

    const-string/jumbo v0, "onCleanUpRecentsAnimationStarted"

    .line 1004
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public final prepareIfPossible()V
    .registers 2

    .line 830
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 831
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setState(I)V

    :cond_a
    return-void
.end method

.method public final redrawTask(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 725
    new-instance p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public registerSyncAppCallback(Landroid/os/RemoteCallback;)V
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const-string v1, "ChangeTransitionController"

    if-eqz v0, :cond_15

    const-string/jumbo p0, "registerSyncAppCallback: failed, send result immediately"

    .line 795
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 796
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    .line 800
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 801
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAppCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerSyncAppCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public removeFromSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFromSyncApps: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", remains="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangeTransitionController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->setReadyIfPossible()V

    :cond_3d
    return-void
.end method

.method public removeFromSyncTasks(ILjava/lang/String;)V
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFromSyncTasks: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remains="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChangeTransitionController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->setReadyIfPossible()V

    :cond_41
    return-void
.end method

.method public final setReadyIfPossible()V
    .registers 3

    .line 836
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 839
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1d

    :cond_18
    const/4 v0, 0x2

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->setState(I)V

    return-void

    .line 840
    :cond_1d
    :goto_1d
    sget-boolean v0, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReadyIfPossible: failed, syncTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncAllDrawnApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncAllDrawnApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChangeTransitionController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void
.end method

.method public final setState(I)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/android/server/wm/ChangeTransitionController$ChangeTransitState;
        .end annotation
    .end param

    .line 165
    iget v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    if-eq v0, p1, :cond_74

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    invoke-static {v1}, Lcom/android/server/wm/ChangeTransitionController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-boolean v1, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_3f
    const-string v1, ""

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTransitionController"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mState:I

    .line 170
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 175
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->notifySyncAppCallbacks()V

    .line 177
    iget-boolean p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    if-eqz p1, :cond_6d

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->unfreezeDisplay()V

    .line 181
    :cond_6d
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->onChangeTransitStateReadyLocked()V

    :cond_74
    return-void
.end method

.method public setSwitchingSplitScreen(Z)V
    .registers 3

    .line 471
    iget-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSwitchingSplitScreen:Z

    if-eq v0, p1, :cond_21

    .line 472
    iput-boolean p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSwitchingSplitScreen:Z

    .line 473
    sget-boolean p0, Lcom/android/server/wm/ChangeTransitionController;->DEBUG:Z

    if-eqz p0, :cond_21

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSwitchingSplitScreen: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 161
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-void
.end method

.method public final shouldFreezeDisplay(Lcom/android/server/wm/Task;)Z
    .registers 6

    .line 878
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 879
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 880
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 881
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    .line 882
    :goto_1a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 884
    :goto_29
    new-instance v3, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;-><init>(ZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    return v1
.end method

.method public final startChangeTransitionForRootTask(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .registers 13

    .line 669
    new-instance v0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    const-string v0, ", reason="

    const-string v1, "ChangeTransitionController"

    if-eqz v2, :cond_87

    .line 670
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_87

    .line 675
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startChangeTransitionForRootTask: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", winMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", stage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 675
    invoke-static {v1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object p4, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    const/4 p4, 0x2

    if-eq p2, p4, :cond_62

    const/4 p4, 0x6

    if-ne p2, p4, :cond_60

    goto :goto_62

    :cond_60
    const/4 p4, 0x0

    goto :goto_68

    .line 682
    :cond_62
    :goto_62
    iget-object p4, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, v2}, Lcom/android/server/wm/ChangeTransitionController;->getEndBounds(Landroid/graphics/Rect;Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object p4

    :goto_68
    move-object v5, p4

    if-eqz p3, :cond_7c

    .line 683
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 684
    iget-object p1, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->getSplitCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_7d

    :cond_7c
    const/4 p1, 0x0

    :goto_7d
    move v7, p1

    .line 685
    iget-object v4, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    return-void

    .line 671
    :cond_87
    :goto_87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startChangeTransitionForRootTask: failed, root #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", topVisibleLeaf="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMultiSplitEnterTransitIfPossible()V
    .registers 7

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootCellStageTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "ChangeTransitionController"

    if-nez v1, :cond_17

    const-string/jumbo p0, "startMultiSplitEnterTransitIfPossible: failed, cannot find cellRoot"

    .line 508
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result v3

    .line 512
    new-instance v4, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootStageTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 514
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    if-eqz v0, :cond_6f

    .line 515
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_6f

    .line 518
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startMultiSplitEnterTransitIfPossible: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cellPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {v3}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 522
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v1, "enter_multi_split"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncTasks(ILjava/lang/String;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public startSplitEnterTransitIfPossible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 290
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_78

    if-eqz v2, :cond_78

    .line 291
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 292
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_78

    .line 295
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSplitEnterTransitIfPossible: #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ChangeTransitionController"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ChangeTransitionController;->shouldFreezeDisplay(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ChangeTransitionController;->getFreezeSyncTarget(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_50

    const-string/jumbo p0, "startSplitEnterTransitIfPossible: failed freezing display"

    .line 300
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    const-string v0, "enter_split(letter-box)"

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncApps(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->freezeDisplay(Z)V

    return-void

    .line 308
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/android/server/wm/ChangeTransitionController;->initializeChangeTransition(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 310
    iget v0, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v1, "enter_split"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ChangeTransitionController;->addToSyncTasks(ILjava/lang/String;)V

    if-eqz p1, :cond_78

    .line 311
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_78

    .line 312
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mFinishingNoAnimContainer:Lcom/android/server/wm/WindowContainer;

    :cond_78
    :goto_78
    return-void
.end method

.method public unfreezeDisplay()V
    .registers 4

    .line 925
    iget-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    const-string v1, "ChangeTransitionController"

    if-nez v0, :cond_d

    const-string/jumbo p0, "unfreezeDisplay: failed, not freeze state"

    .line 926
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 930
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unfreezeDisplay: Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 931
    iput-boolean v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFreezingDisplay:Z

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 934
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public willBeDismissedByFinishActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 317
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p0

    .line 318
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 319
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    const/4 v0, 0x0

    if-nez p0, :cond_14

    return v0

    .line 323
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-ne v1, p1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method
