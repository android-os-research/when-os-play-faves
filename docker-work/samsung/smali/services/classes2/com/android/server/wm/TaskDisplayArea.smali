.class public final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;,
        Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskDisplayArea"


# instance fields
.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBackgroundColor:I

.field public final mCanHostHomeTask:Z

.field public mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

.field public mChangeAnimationLayer:Landroid/view/SurfaceControl;

.field public mColorLayerCounter:I

.field public final mCreatedByOrganizer:Z

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

.field public final mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

.field public mHasPipWithInternalPresentationOnly:Z

.field public mLastFocusedRootTask:Lcom/android/server/wm/Task;

.field public mLastLeafTaskToFrontId:I

.field public mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLaunchRootTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;",
            ">;"
        }
    .end annotation
.end field

.field public mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

.field public mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRemoved:Z

.field public mRootCellStageTask:Lcom/android/server/wm/Task;

.field public mRootHomeTask:Lcom/android/server/wm/Task;

.field public mRootMainStageTask:Lcom/android/server/wm/Task;

.field public mRootPinnedTask:Lcom/android/server/wm/Task;

.field public mRootSideStageTask:Lcom/android/server/wm/Task;

.field public mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field public final mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpFreeformChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpFreeformPinnedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpHomeChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field public final mTmpNormalChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AR0e6hgN6LluPpY0HPELU8Ico5M(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onStageSplitScreenDismissed$10([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BScM-CD2wwiwQJSg-pC3GWQ185o(Lcom/android/server/wm/TaskDisplayArea;ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getOrientation$3(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D9H6yXT19UCrBGhlPDvqF7YxhGQ(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getVisibleTasks$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYidKPzUkLETjkRN9VF8Kw1HZgI(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getTopRootTask$1(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LM4s8tcgv7M3Wp8EXhnXrOZHHx0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onStageSplitScreenDismissed$11(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ONwdtCo7IM19ej27n681F6ozD1o(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getBottomMostVisibleRootTask$13(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OhyLhka1Tb7y-oY32uAH82qgsyI([ILcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getRootTaskCount$12([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8Cug8xvjz5_3N9HUYN23a8JwCI([ZLcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$childrenNeedBoostRootTaskLayerForAppTransition$6([ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDwSWOAO3bWMEquCCuqIzOIFsYY(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->lambda$pauseBackTasks$9(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VHkBVJQ9UFUW7c5QUYvNbppmahc(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$onParentChanged$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$VlCsJqULLc5sYclwBX7VBWYipDs(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gJR2owGQJcuv2xcu-3DLZdjXzvQ([ZLcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->lambda$childrenNeedZBoost$5([ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNU9N8lwjRY3oB1gVBxCLoUc_y0(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getOrientation$4(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pGlclxH5X3MbwrC20mnX1IH3t0A(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->lambda$ensureActivitiesVisible$14(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uuiWs_4nNasIw8JPlnmaWMlPw4E(IILcom/android/server/wm/Task;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->lambda$getRootTask$0(IILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yqUS9ZtvLHh6NsMGJ805rAtZujg(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/TaskFragment;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->lambda$pauseBackTasks$8(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 249
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 255
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V
    .registers 8

    .line 262
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 p3, 0x0

    .line 99
    iput p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 110
    iput p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 154
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 155
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 156
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 157
    new-instance p3, Landroid/util/IntArray;

    invoke-direct {p3}, Landroid/util/IntArray;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 160
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    .line 164
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    .line 167
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 184
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 213
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 263
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 264
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 265
    iget-object p1, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 266
    iput-boolean p5, p0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    .line 267
    iput-boolean p6, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    .line 269
    new-instance p1, Lcom/android/server/wm/FreeformTaskPinningController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/FreeformTaskPinningController;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    return-void
.end method

.method public static getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 3

    .line 2459
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2460
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 2461
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1d

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method public static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3

    .line 2364
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p0, p1, :cond_f

    :cond_d
    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static isWindowingModeSupported(IZZZ)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_1a

    if-ne p0, v0, :cond_6

    goto :goto_1a

    :cond_6
    const/4 v1, 0x0

    if-nez p1, :cond_a

    return v1

    :cond_a
    const/4 p1, 0x6

    if-ne p0, p1, :cond_e

    return v0

    :cond_e
    if-nez p2, :cond_14

    const/4 p1, 0x5

    if-ne p0, p1, :cond_14

    return v1

    :cond_14
    if-nez p3, :cond_1a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1a

    return v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static synthetic lambda$childrenNeedBoostRootTaskLayerForAppTransition$6([ZLcom/android/server/wm/Task;)V
    .registers 4

    const/4 v0, 0x0

    .line 1161
    aget-boolean v1, p0, v0

    iget-boolean p1, p1, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$childrenNeedZBoost$5([ZLcom/android/server/wm/Task;)V
    .registers 4

    const/4 v0, 0x0

    .line 1122
    aget-boolean v1, p0, v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result p1

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$ensureActivitiesVisible$14(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5

    .line 2536
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method public static synthetic lambda$getBottomMostVisibleRootTask$13(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 2416
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v3, 0x0

    .line 2418
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_15

    if-eqz v0, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method private synthetic lambda$getOrientation$3(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5

    if-eq p2, p0, :cond_13

    .line 886
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_a

    goto :goto_13

    .line 889
    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrientation(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    return-object p3
.end method

.method public static synthetic lambda$getOrientation$4(Lcom/android/server/wm/Task;)Z
    .registers 1

    .line 908
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getRootTask$0(IILcom/android/server/wm/Task;)Z
    .registers 4

    if-nez p0, :cond_a

    .line 288
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 293
    :cond_a
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getRootTaskCount$12([ILcom/android/server/wm/Task;)V
    .registers 3

    const/4 p1, 0x0

    .line 2242
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static synthetic lambda$getTopRootTask$1(Lcom/android/server/wm/Task;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$getVisibleTasks$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 362
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private synthetic lambda$onParentChanged$7()V
    .registers 5

    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string/jumbo v2, "splitScreenDividerAnchor"

    .line 1189
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TaskDisplayArea.onParentChanged"

    .line 1190
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1191
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 1194
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "NaturalSwitchingAnchor"

    .line 1195
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1196
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1197
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    .line 1198
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1201
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "ChangeAnimationLayer"

    .line 1202
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1203
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1204
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "ChangeAnimationBoostedLayer"

    .line 1207
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1208
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1213
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "FreeformAnimationLayer"

    .line 1214
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1215
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 1221
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private synthetic lambda$onStageSplitScreenDismissed$10([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1934
    iget-boolean p1, p3, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_26

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1935
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-eqz p1, :cond_26

    if-eqz p2, :cond_21

    .line 1942
    iget-object p1, p3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1943
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26

    .line 1945
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public static synthetic lambda$onStageSplitScreenDismissed$11(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    const/4 v0, 0x0

    .line 1955
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public static synthetic lambda$pauseBackTasks$8(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/TaskFragment;)V
    .registers 5

    .line 1905
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1906
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const-string/jumbo v1, "pauseBackTasks"

    .line 1907
    invoke-virtual {p2, v0, p0, v1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 1908
    aget p0, p1, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, p1, v0

    :cond_1c
    return-void
.end method

.method private synthetic lambda$pauseBackTasks$9(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V
    .registers 6

    .line 1893
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 1895
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1896
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eq p0, p3, :cond_26

    const/4 p0, 0x0

    const-string/jumbo v0, "pauseBackTasks"

    .line 1898
    invoke-virtual {p3, p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1899
    aget v0, p2, p0

    add-int/2addr v0, v1

    aput v0, p2, p0

    .line 1904
    :cond_26
    new-instance p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/ActivityRecord;[I)V

    invoke-virtual {p3, p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 5

    .line 459
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 460
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_28

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set TaskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_28
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_39

    .line 464
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 465
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChildTask(Lcom/android/server/wm/Task;I)V

    :goto_39
    return-void

    .line 467
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskDisplayArea can only add Task and TaskDisplayArea, but found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addChildTask(Lcom/android/server/wm/Task;I)V
    .registers 5

    .line 474
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x1

    .line 477
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result p2

    .line 479
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 480
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_42

    .line 481
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 482
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p2

    if-gez p2, :cond_42

    const/4 p2, 0x0

    .line 484
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 486
    :cond_42
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 7

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " rootTask="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_3c

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3a

    .line 381
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3c

    .line 382
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootTaskReferenceIfNeeded: root home task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_3a
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 391
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_43

    return-void

    .line 394
    :cond_43
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_76

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_51

    .line 401
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    goto :goto_9f

    .line 397
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootTaskReferenceIfNeeded: root pinned task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9f

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 406
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_94

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_91

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 411
    :cond_91
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    goto :goto_9f

    :cond_94
    if-ne v0, v3, :cond_9f

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9d

    .line 414
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 416
    :cond_9d
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final adjustFreeformTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I)I"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_33

    .line 1136
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1137
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 1140
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->childrenNeedBoostRootTaskLayerForAppTransition()Z

    move-result v4

    goto :goto_22

    .line 1141
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsBoostRootTaskLayerForAppTransition()Z

    move-result v4

    :goto_22
    if-nez v4, :cond_2b

    add-int/lit8 v4, p3, 0x1

    .line 1144
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move p3, v4

    goto :goto_30

    .line 1146
    :cond_2b
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1150
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_39
    if-ge v1, v0, :cond_50

    .line 1152
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    add-int/lit8 v3, p3, 0x1

    .line 1153
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    add-int/lit8 v1, v1, 0x1

    move p3, v3

    goto :goto_39

    :cond_50
    return p3
.end method

.method public final adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I)I"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1081
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    if-ge v2, v0, :cond_5a

    .line 1084
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1085
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 1087
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->childrenNeedZBoost()Z

    move-result v5

    goto :goto_23

    .line 1088
    :cond_1f
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v5

    :goto_23
    if-eqz v5, :cond_2b

    .line 1091
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_57

    .line 1095
    :cond_2b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_44

    .line 1097
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1098
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_44

    move v5, v6

    goto :goto_45

    :cond_44
    move v5, v1

    :goto_45
    if-eqz v5, :cond_49

    move v3, v6

    goto :goto_51

    :cond_49
    if-eqz v3, :cond_51

    const/16 v5, 0x7530

    if-ge p3, v5, :cond_51

    const/16 p3, 0x7531

    :cond_51
    :goto_51
    add-int/lit8 v5, p3, 0x1

    .line 1108
    invoke-virtual {v4, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move p3, v5

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1111
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_60
    if-ge v1, v0, :cond_77

    .line 1113
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    add-int/lit8 v3, p3, 0x1

    .line 1114
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    add-int/lit8 v1, v1, 0x1

    move p3, v3

    goto :goto_60

    :cond_77
    return p3
.end method

.method public allResumedActivitiesComplete()Z
    .registers 6

    .line 1855
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_42

    .line 1856
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1857
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 1858
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v2

    if-nez v2, :cond_3f

    return v4

    .line 1864
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 1865
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-nez v2, :cond_3f

    return v4

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1869
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1870
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v2, :cond_6a

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: currentFocusedRootTask changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_6a
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    return v1
.end method

.method public asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 948
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 950
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 951
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method public assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    .line 956
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 959
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 960
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 961
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 966
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 968
    :goto_22
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c7

    .line 969
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 970
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 972
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_45

    .line 974
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c3

    .line 976
    :cond_45
    iget-boolean v4, v2, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    if-eqz v4, :cond_50

    .line 978
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c3

    .line 980
    :cond_50
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 983
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 984
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 987
    :cond_62
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 989
    :cond_68
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 990
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 992
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 997
    :cond_7a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 999
    iget-boolean v3, v2, Lcom/android/server/wm/WindowContainer;->mBoostRootTaskLayerForAppTransition:Z

    if-eqz v3, :cond_88

    .line 1000
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1003
    :cond_88
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1004
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1005
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1009
    :cond_9a
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 1011
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1012
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1015
    :cond_ac
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1017
    :cond_b2
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1018
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1020
    :cond_be
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22

    .line 1031
    :cond_c7
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v0

    .line 1032
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v0

    const/16 v1, 0x7531

    .line 1036
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 1043
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustFreeformTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v2

    .line 1045
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformPinnedChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustFreeformTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 1050
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1053
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 1054
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    const/16 v4, 0x7530

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1057
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_105

    .line 1058
    invoke-virtual {p1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1060
    :cond_105
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_10c

    .line 1061
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1064
    :cond_10c
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_113

    .line 1065
    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_113
    return-void
.end method

.method public canCreateRemoteAnimationTarget()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canHostHomeTask()Z
    .registers 2

    .line 2520
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public canSpecifyOrientation()Z
    .registers 2

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2620
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final childrenNeedBoostRootTaskLayerForAppTransition()Z
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1160
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final childrenNeedZBoost()Z
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1121
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public clearBackgroundColor()V
    .registers 3

    .line 1275
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    if-nez v0, :cond_18

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_18
    return-void
.end method

.method public clearPreferredTopFocusableRootTask()V
    .registers 2

    const/4 v0, 0x0

    .line 2624
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 2

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public createRootTask(IIZ)Lcom/android/server/wm/Task;
    .registers 5

    const/4 v0, 0x0

    .line 1547
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 7

    .line 1567
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1568
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 1569
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 1570
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1571
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1572
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2670
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2671
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_4c

    .line 2672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mPreferredTopFocusableRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2675
    :cond_4c
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_69

    .line 2676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFocusedRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2681
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d9

    .line 2682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLaunchRootTasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9c
    if-ltz v2, :cond_d9

    .line 2684
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 2685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 2686
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 2687
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2685
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 2692
    :cond_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f3
    if-ltz v2, :cond_124

    .line 2694
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2695
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_103

    .line 2696
    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_121

    .line 2699
    :cond_103
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    invoke-virtual {v3, p1, v1, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_121
    add-int/lit8 v2, v2, -0x1

    goto :goto_f3

    .line 2706
    :cond_124
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FreeformTaskPinningController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 2532
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2533
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2532
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 2535
    :try_start_b
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1b

    .line 2540
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :catchall_1b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2541
    throw p1
.end method

.method public final findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I
    .registers 7

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_26

    .line 798
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    if-ne v3, p1, :cond_16

    move v2, v1

    .line 802
    :cond_16
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/Task;)I

    move-result v4

    if-gt v3, v4, :cond_23

    if-nez v2, :cond_23

    return v0

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    return v2
.end method

.method public final findMinPositionForRootTask(Lcom/android/server/wm/Task;)I
    .registers 7

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_3
    move v4, v1

    move v1, v0

    move v0, v4

    .line 774
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 775
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/Task;)I

    move-result v3

    if-ge v2, v3, :cond_23

    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 782
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 788
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p0, v1, :cond_32

    move v1, p0

    :cond_32
    return v1
.end method

.method public final findPositionForRootTask(ILcom/android/server/wm/Task;Z)I
    .registers 7

    .line 848
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 850
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v1

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_14

    .line 855
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_19

    :cond_14
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_19

    const/4 p1, 0x0

    .line 861
    :cond_19
    :goto_19
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 864
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq v0, p1, :cond_2f

    if-nez p3, :cond_2d

    if-ge v0, p0, :cond_2f

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    :cond_2f
    return v0
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 694
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 695
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_f

    .line 697
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 698
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :goto_f
    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    .line 685
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p2

    if-nez p2, :cond_10

    .line 686
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_10
    move v0, v1

    :cond_11
    return v0

    .line 688
    :cond_12
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    return v0
.end method

.method public final getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 3

    .line 2415
    new-instance p1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 2475
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1806
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1812
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1813
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_21

    .line 1816
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1817
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_21

    :cond_1c
    const/4 v0, 0x1

    .line 1820
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method public getFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 1745
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    return-object v0

    .line 1749
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_3e

    .line 1750
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1751
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1752
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3b

    return-object v1

    .line 1759
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-object v1

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 2350
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2355
    :cond_8
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2356
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2355
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 2358
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2359
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 722
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_d

    .line 723
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_d
    return-object p2

    .line 725
    :cond_e
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_19

    .line 728
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public getLastFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 1827
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1637
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 8

    if-eqz p3, :cond_11

    .line 1646
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 1648
    iget-boolean v0, p3, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_11

    return-object p3

    :cond_11
    and-int/lit16 p3, p5, 0x1000

    if-eqz p3, :cond_98

    .line 1654
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_98

    if-eqz p4, :cond_31

    if-ne p4, p6, :cond_31

    .line 1659
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p3

    if-eqz p3, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-ne p3, p4, :cond_31

    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 1660
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p3

    if-nez p3, :cond_40

    :cond_31
    if-eqz p4, :cond_57

    .line 1661
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p3

    if-nez p3, :cond_40

    .line 1662
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p3

    if-nez p3, :cond_40

    goto :goto_57

    .line 1664
    :cond_40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getLaunchRootTask: Skip adjacent flag, "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "WindowManager"

    invoke-static {p5, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_57
    :goto_57
    if-eqz p4, :cond_95

    .line 1668
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 1669
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-eq p4, p1, :cond_6b

    .line 1671
    invoke-virtual {p4, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 1673
    :cond_6b
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 1675
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 1674
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 1676
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 1679
    :cond_8a
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 1682
    :cond_95
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    return-object p0

    .line 1687
    :cond_98
    :goto_98
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_a0
    const/4 p5, 0x0

    if-ltz p3, :cond_da

    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1689
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c2

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    goto :goto_c3

    :cond_c2
    move-object p1, p5

    :goto_c3
    if-eqz p1, :cond_c9

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p5

    :cond_c9
    if-eqz p4, :cond_d6

    if-eqz p5, :cond_d6

    if-eq p4, p5, :cond_d5

    .line 1696
    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_d6

    :cond_d5
    return-object p5

    :cond_d6
    return-object p0

    :cond_d7
    add-int/lit8 p3, p3, -0x1

    goto :goto_a0

    :cond_da
    if-eqz p4, :cond_119

    .line 1708
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_ff

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_ff

    if-eqz p6, :cond_fe

    .line 1712
    invoke-virtual {p6}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 1713
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_f7

    return-object p5

    .line 1716
    :cond_f7
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_fe

    return-object p1

    :cond_fe
    return-object p0

    :cond_ff
    if-eqz p0, :cond_119

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_119

    if-eqz p6, :cond_118

    .line 1727
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_118

    if-eq p1, p0, :cond_118

    .line 1729
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-ne p0, p2, :cond_118

    move-object p0, p1

    :cond_118
    return-object p0

    :cond_119
    return-object p5
.end method

.method public final getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    .registers 5

    .line 1626
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 1627
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v1, v2, :cond_1d

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1628
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public getNaturalSwitchingAnchor()Landroid/view/SurfaceControl;
    .registers 1

    .line 1180
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 8

    if-eqz p1, :cond_7

    .line 1770
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x0

    .line 1773
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_51

    .line 1774
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1775
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 1776
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1777
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4d

    return-object v3

    .line 1784
    :cond_2c
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz p2, :cond_3d

    if-ne v3, p1, :cond_3d

    goto :goto_4d

    .line 1788
    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_4d

    .line 1793
    :cond_44
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v4

    if-eqz v4, :cond_50

    const/4 v4, 0x5

    if-eq v0, v4, :cond_50

    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_50
    return-object v3

    :cond_51
    return-object v1
.end method

.method public getNextRootTaskId()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1543
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result p0

    return p0
.end method

.method public getOrCreateRootHomeTask()Lcom/android/server/wm/Task;
    .registers 2

    const/4 v0, 0x0

    .line 2249
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;
    .registers 4

    .line 2261
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2265
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public getOrCreateRootTask(IIZ)Lcom/android/server/wm/Task;
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1377
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;
    .registers 16

    if-nez p1, :cond_8

    .line 1403
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, p1

    .line 1406
    :goto_9
    invoke-static {v2, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1407
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p4

    if-eqz p4, :cond_10b

    return-object p4

    :cond_16
    if-eqz p4, :cond_10b

    if-eqz p3, :cond_1e

    const v0, 0x7fffffff

    goto :goto_20

    :cond_1e
    const/high16 v0, -0x80000000

    :goto_20
    move-object v1, p0

    move v3, p2

    move-object v4, p6

    move-object v5, p5

    move v6, p7

    move-object v7, p4

    .line 1413
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p2

    const/4 p5, 0x5

    if-eqz p2, :cond_41

    .line 1427
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p7

    if-nez p7, :cond_37

    .line 1428
    invoke-virtual {p2, p4, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_66

    .line 1429
    :cond_37
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p7

    if-eq p7, p2, :cond_66

    .line 1430
    invoke-virtual {p4, p2, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_66

    .line 1432
    :cond_41
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    if-eq p2, p0, :cond_55

    .line 1433
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-nez p2, :cond_51

    .line 1434
    invoke-virtual {p0, p4, v0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_66

    .line 1436
    :cond_51
    invoke-virtual {p4, p0, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_66

    .line 1440
    :cond_55
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-nez p2, :cond_66

    if-ne p1, p5, :cond_66

    .line 1442
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 1443
    invoke-virtual {p4, p0, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_66
    :goto_66
    const/4 p2, 0x0

    if-eqz p1, :cond_75

    .line 1449
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p7

    if-eqz p7, :cond_75

    .line 1450
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p7

    if-ne p7, p1, :cond_7b

    .line 1452
    :cond_75
    invoke-static {p6, p2, p4}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldApplyForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result p7

    if-eqz p7, :cond_e6

    :cond_7b
    const/4 p7, 0x1

    if-ne p1, p5, :cond_a4

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1457
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1460
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p3, p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    const/4 p3, 0x0

    .line 1462
    :try_start_90
    invoke-virtual {p4, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_9b

    .line 1464
    iget-object p6, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p6, p6, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p6, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    goto :goto_b9

    :catchall_9b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 1465
    throw p1

    :cond_a4
    if-eqz p6, :cond_b6

    .line 1467
    invoke-virtual {p6}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p6

    if-ne p6, p7, :cond_b6

    .line 1468
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p6

    if-eqz p6, :cond_b6

    .line 1469
    invoke-virtual {p4, p0, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_b9

    .line 1472
    :cond_b6
    invoke-virtual {p4, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :goto_b9
    if-ne p1, p5, :cond_e6

    .line 1476
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_e6

    iget-object p3, p4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p3, :cond_cb

    .line 1478
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_e6

    .line 1479
    :cond_cb
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1480
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    if-eqz v3, :cond_df

    .line 1481
    iget-object p0, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v2, p0

    goto :goto_e0

    :cond_df
    move-object v2, p2

    :goto_e0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    .line 1480
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1486
    :cond_e6
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_106

    .line 1487
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-eq p0, p1, :cond_106

    .line 1488
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_106

    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-nez p0, :cond_106

    .line 1489
    invoke-virtual {p4, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1490
    iput-object p2, p4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1491
    invoke-virtual {p4, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1494
    :cond_106
    invoke-virtual {p4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 1496
    :cond_10b
    new-instance p4, Lcom/android/server/wm/Task$Builder;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p4, v0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1497
    invoke-virtual {p4, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 1498
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 1499
    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 1500
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1501
    invoke-virtual {p0, p5}, Lcom/android/server/wm/Task$Builder;->setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1502
    invoke-virtual {p0, p6}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1503
    invoke-virtual {p0, p7}, Lcom/android/server/wm/Task$Builder;->setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;
    .registers 17

    move-object v0, p1

    move-object v6, p2

    move-object v4, p3

    move-object v1, p5

    if-eqz v1, :cond_9

    .line 1519
    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_11

    :cond_9
    if-eqz v6, :cond_10

    .line 1523
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1527
    :goto_11
    invoke-static {p2, p1, p3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v2

    if-eqz v2, :cond_18

    move v1, v2

    :cond_18
    move-object v2, p0

    .line 1536
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    move-object v0, p0

    move v2, p7

    move/from16 v3, p8

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move v7, p6

    .line 1537
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation(I)I
    .registers 12

    const/4 v0, 0x0

    .line 879
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 880
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_b

    return v2

    .line 883
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v1

    if-nez v1, :cond_25

    .line 885
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/TaskDisplayArea;I)V

    .line 890
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 885
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 907
    :cond_25
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;-><init>()V

    .line 908
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_44

    .line 910
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 911
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_44

    return v3

    .line 917
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    move-result v4

    if-nez v4, :cond_bf

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_bf

    .line 922
    :cond_51
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v4, :cond_64

    if-eqz v1, :cond_64

    .line 923
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 924
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_64

    return v3

    .line 929
    :cond_64
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq p1, v2, :cond_92

    const/4 v2, 0x3

    if-eq p1, v2, :cond_92

    .line 932
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_91

    int-to-long v6, p1

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, p0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x5253dbca

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {p0, v2, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_91
    return p1

    .line 938
    :cond_92
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p1

    int-to-long v6, p1

    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, p1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x61c711e7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {p1, v2, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 943
    :cond_b8
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p0

    return p0

    :cond_bf
    :goto_bf
    return v3
.end method

.method public final getPriority(Lcom/android/server/wm/Task;)I
    .registers 2

    .line 763
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x5

    return p0

    .line 764
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x4

    return p0

    .line 765
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x3

    return p0

    .line 766
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformPinned()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x2

    return p0

    .line 767
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public final getPriority(Lcom/android/server/wm/WindowContainer;)I
    .registers 3

    .line 743
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 746
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0

    .line 748
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/Task;)I

    move-result p0

    return p0
.end method

.method public getRootCellStageTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootHomeTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootMainStageTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootPinnedTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootSideStageTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getRootStageTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 322
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    return-object p0

    .line 324
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTask(II)Lcom/android/server/wm/Task;
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object p0

    :cond_6
    if-ne p1, v0, :cond_b

    .line 284
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object p0

    .line 286
    :cond_b
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda15;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskCount()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2241
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public getRootTaskIndex(Lcom/android/server/wm/Task;)I
    .registers 2

    .line 822
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 1

    .line 1175
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    return-object p0
.end method

.method public getTopRootStageTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    goto :goto_13

    :cond_12
    move-object p0, v1

    :goto_13
    if-eqz p0, :cond_2d

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2d

    .line 2287
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public getTopRootTask()Lcom/android/server/wm/Task;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 299
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 2292
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2295
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;
    .registers 3

    const/4 v0, 0x0

    .line 2320
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda13;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final handleExceptionForRootStageTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 2760
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2764
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 2766
    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2765
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2768
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 2770
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRootTaskReferenceIfNeeded: root stage task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exist on display="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " rootTask="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskDisplayArea"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasChildTaskInSideStage()Z
    .registers 1

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hasPinnedTask()Z
    .registers 1

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isLargeEnoughForMultiWindow()Z
    .registers 2

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-lt v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isMultiSplitActive()Z
    .registers 1

    .line 2307
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMultiSplitTwoUpModeActivated()Z
    .registers 2

    .line 2311
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isOnTop()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 2479
    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return p0
.end method

.method public isRootTaskVisible(I)Z
    .registers 2

    .line 2466
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isSplitScreenModeActivated()Z
    .registers 1

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2273
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isSplitScreenStarting()Z
    .registers 3

    .line 351
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 354
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public isSplitScreenVisible()Z
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 346
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isTaskDisplayArea()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isTopRootTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 2180
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUnderHomeTask(Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 2644
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le v0, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 9

    .line 2072
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 2073
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 2074
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_30

    if-eqz p3, :cond_22

    .line 2077
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    .line 2078
    invoke-virtual {p3, p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1e

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v4

    goto :goto_30

    :cond_20
    :goto_20
    move v1, v3

    goto :goto_30

    :cond_22
    if-eqz p2, :cond_30

    .line 2084
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    .line 2085
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    .line 2086
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    :cond_30
    :goto_30
    if-eqz p1, :cond_39

    .line 2091
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    :goto_3a
    return v3
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 1287
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 1289
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    if-lez v0, :cond_d

    .line 1290
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    .line 1293
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-nez v0, :cond_12

    return-void

    .line 1299
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1300
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1303
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public moveHomeActivityToTop(Ljava/lang/String;)V
    .registers 3

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2337
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    return-void

    .line 2340
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    return-void
.end method

.method public moveHomeRootTaskToFront(Ljava/lang/String;)V
    .registers 2

    .line 2324
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2326
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V
    .registers 10

    const/4 v0, 0x0

    .line 2373
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 2379
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2383
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2385
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_27

    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    :goto_27
    move v4, v3

    :goto_28
    if-ge v4, v2, :cond_7b

    if-eqz v1, :cond_48

    .line 2389
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2390
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 2391
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/TaskDisplayArea;->getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_54

    .line 2393
    :cond_43
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_54

    .line 2396
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    :goto_54
    if-eq v5, p1, :cond_78

    if-nez v5, :cond_59

    goto :goto_78

    .line 2401
    :cond_59
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_62

    move v6, v7

    goto :goto_63

    :cond_62
    move v6, v3

    .line 2403
    :goto_63
    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_78

    if-eqz v6, :cond_78

    sub-int/2addr v4, v7

    .line 2405
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2406
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_7b

    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_7b
    :goto_7b
    return-void
.end method

.method public moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5

    if-eqz p2, :cond_2a

    if-ne p2, p1, :cond_5

    goto :goto_2a

    .line 2433
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2434
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq p0, v0, :cond_12

    goto :goto_2a

    .line 2442
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2443
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gt v0, p2, :cond_22

    add-int/lit8 p2, p2, -0x1

    :cond_22
    const/4 v0, 0x0

    .line 2446
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2447
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 2649
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2651
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 674
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 675
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    return-void
.end method

.method public onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V
    .registers 4

    if-nez p2, :cond_23

    .line 648
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne p1, p2, :cond_22

    const/4 p1, -0x1

    .line 649
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 655
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    :cond_22
    return-void

    .line 661
    :cond_23
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-eq p2, v0, :cond_46

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_46

    .line 665
    :cond_30
    iget p2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 666
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    .line 669
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onLeafTaskRemoved(I)V
    .registers 3

    .line 641
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, p1, :cond_7

    const/4 p1, -0x1

    .line 642
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    :cond_7
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 4

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1187
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_7c

    .line 1224
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1225
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 1226
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 1227
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    .line 1228
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 1231
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1232
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mNaturalSwitchingAnchor:Landroid/view/SurfaceControl;

    .line 1235
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1236
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1237
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationLayer:Landroid/view/SurfaceControl;

    .line 1238
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChangeAnimationBoostedLayer:Landroid/view/SurfaceControl;

    .line 1241
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1242
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    :goto_7c
    return-void
.end method

.method public onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 2506
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2507
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onRootTaskRemoved(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1319
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_27

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRootTaskRemoved: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2e

    .line 1324
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 1326
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-ne v0, p1, :cond_34

    .line 1327
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 1329
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 1330
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p1, :cond_17

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_17
    return-void
.end method

.method public onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1920
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method public onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V
    .registers 13

    const-string/jumbo v0, "onStageSplitScreenDismissed"

    .line 1925
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    .line 1928
    :try_start_c
    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz p2, :cond_19

    const-string/jumbo p2, "split_dismissed(tda)"

    .line 1930
    invoke-virtual {v4, p2}, Landroid/window/WindowContainerTransaction;->freezeDisplayInTransaction(Ljava/lang/String;)V

    .line 1932
    :cond_19
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1933
    new-instance p2, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1950
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_2d
    if-ltz p2, :cond_5d

    .line 1951
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    move v6, v3

    .line 1952
    :goto_38
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_5a

    .line 1953
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 1954
    new-instance v8, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;

    invoke-direct {v8}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1956
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 1957
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v7

    const/4 v8, 0x0

    .line 1958
    invoke-virtual {v4, v7, v8, p3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1959
    invoke-virtual {v4, v7, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_5a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2d

    .line 1962
    :cond_5d
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_93

    if-eqz p1, :cond_68

    move-object p2, p1

    goto :goto_6c

    .line 1966
    :cond_68
    :try_start_68
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p2

    .line 1967
    :goto_6c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_86

    if-eqz p2, :cond_7a

    .line 1968
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_7c

    :cond_7a
    if-eqz p1, :cond_86

    :cond_7c
    aget-object p1, v2, v3

    if-nez p1, :cond_86

    .line 1980
    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_68 .. :try_end_86} :catchall_8c

    .line 1984
    :cond_86
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_8c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1985
    throw p1

    :catchall_93
    move-exception p2

    if-eqz p1, :cond_98

    move-object p3, p1

    goto :goto_9c

    .line 1966
    :cond_98
    :try_start_98
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object p3

    .line 1967
    :goto_9c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_b6

    if-eqz p3, :cond_aa

    .line 1968
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_ac

    :cond_aa
    if-eqz p1, :cond_b6

    :cond_ac
    aget-object p1, v2, v3

    if-nez p1, :cond_b6

    .line 1980
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_bc

    .line 1984
    :cond_b6
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1986
    throw p2

    :catchall_bc
    move-exception p1

    .line 1984
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1985
    throw p1
.end method

.method public pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1890
    new-instance v3, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget p0, v1, v2

    if-lez p0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 5

    .line 534
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 535
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_17

    .line 536
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 537
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildTaskAt(ILcom/android/server/wm/Task;Z)V

    :goto_17
    return-void

    .line 539
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TaskDisplayArea can only position Task and TaskDisplayArea, but found "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final positionChildTaskAt(ILcom/android/server/wm/Task;Z)V
    .registers 11

    .line 546
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    if-gtz p1, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    .line 549
    :goto_11
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 550
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-nez v0, :cond_3e

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring move of always-on-top root task="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to bottom"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "WindowManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-super {p0, v4, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    .line 564
    :cond_3e
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    if-eqz v5, :cond_57

    .line 565
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v5

    if-nez v5, :cond_57

    move p3, v2

    .line 568
    :cond_57
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result v5

    .line 569
    invoke-super {p0, v5, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    const/high16 v2, -0x80000000

    const/4 v6, 0x0

    if-eqz p3, :cond_8c

    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    if-eqz p3, :cond_8c

    if-nez v0, :cond_6d

    if-eqz v3, :cond_8c

    :cond_6d
    if-eqz v0, :cond_78

    .line 574
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p3

    if-eqz p3, :cond_78

    .line 575
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    goto :goto_7e

    .line 576
    :cond_78
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne p3, p2, :cond_7e

    .line 577
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 581
    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    if-eqz v0, :cond_88

    const v3, 0x7fffffff

    goto :goto_89

    :cond_88
    move v3, v2

    :goto_89
    invoke-virtual {p3, v3, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 585
    :cond_8c
    invoke-virtual {p2, v0, v5}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    .line 587
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    if-eqz v0, :cond_9f

    .line 595
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p3

    if-eqz p3, :cond_9f

    .line 596
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    goto :goto_a5

    .line 597
    :cond_9f
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne p3, p2, :cond_a5

    .line 598
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 602
    :cond_a5
    :goto_a5
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 604
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_c2

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p3, v0, :cond_c2

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v1, "positionChildAt"

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_c2
    if-nez p3, :cond_ec

    if-ne p1, v2, :cond_ec

    .line 616
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 617
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p1, :cond_ec

    .line 619
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_ec

    if-eqz p3, :cond_ec

    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 620
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ec

    .line 623
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v0, "positionChildAt(stageRoot)"

    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 626
    :cond_ec
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 627
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_ff

    .line 628
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p3, :cond_ff

    .line 630
    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowProcessController;->updateTopActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 635
    :cond_ff
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v4, :cond_10a

    .line 636
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    :cond_10a
    return-void
.end method

.method public positionTaskBehindHome(Lcom/android/server/wm/Task;)V
    .registers 10

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1341
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v2, v0

    .line 1343
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1344
    iget-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v3, 0x0

    if-nez v1, :cond_3a

    if-eqz v0, :cond_3a

    .line 1345
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1346
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_30

    .line 1347
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p1, :cond_30

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    if-eqz v4, :cond_3a

    .line 1349
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ChangeTransitionController;->handlePositionTaskBehindHome(Lcom/android/server/wm/Task;)V

    :cond_3a
    if-nez v2, :cond_4c

    .line 1355
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_48

    const/high16 v0, -0x80000000

    .line 1356
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_61

    .line 1358
    :cond_48
    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_61

    .line 1360
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-ne v2, p0, :cond_56

    .line 1362
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_61

    :cond_56
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "positionTaskBehindHome"

    move-object v1, p1

    .line 1364
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    :goto_61
    return-void
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    if-eqz p3, :cond_b

    .line 708
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 709
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 711
    :cond_b
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 712
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .registers 3

    .line 2488
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2489
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public remove()Lcom/android/server/wm/Task;
    .registers 15

    const/4 v0, 0x0

    .line 2550
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 2552
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    .line 2553
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2562
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    move v10, v3

    move v11, v9

    move-object v3, v0

    :goto_19
    const/4 v12, 0x1

    if-ge v11, v10, :cond_89

    .line 2565
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 2566
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2567
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_87

    .line 2570
    :cond_33
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-nez v1, :cond_72

    .line 2575
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-boolean v4, v13, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_4c

    goto :goto_72

    .line 2581
    :cond_4c
    invoke-virtual {v13, v2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2583
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 2584
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    .line 2582
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_64

    :cond_63
    move-object v3, v0

    :goto_64
    if-nez v3, :cond_67

    move-object v3, v2

    :cond_67
    const v4, 0x7fffffff

    .line 2589
    invoke-virtual {v13, v3, v4}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2593
    invoke-virtual {v13, v9}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    move-object v3, v13

    goto :goto_78

    :cond_72
    :goto_72
    const-string/jumbo v4, "removeTaskDisplayArea"

    .line 2577
    invoke-virtual {v13, v9, v4}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 2598
    :goto_78
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v10, v4

    sub-int/2addr v11, v10

    .line 2599
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v10, v4

    :goto_87
    add-int/2addr v11, v12

    goto :goto_19

    :cond_89
    if-eqz v3, :cond_9a

    .line 2602
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 2606
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v1, "display-removed"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2609
    :cond_9a
    iput-boolean v12, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return-object v3
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 492
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 493
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_17

    .line 494
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 495
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChildTask(Lcom/android/server/wm/Task;)V

    :goto_17
    return-void

    .line 497
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDisplayArea can only remove Task and TaskDisplayArea, but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeChildTask(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 504
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskRemoved(Lcom/android/server/wm/Task;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 511
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->setUnminimizedWhenRemoved()V

    .line 515
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_21

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v1, "removeChildTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 521
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getTaskMotionController()Lcom/android/server/wm/TaskMotionController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionController;->removeTaskToMotionInfo(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public removeLaunchRootTask(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1600
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1602
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public removeRootTask(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 2471
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 430
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    goto :goto_20

    .line 431
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_f

    .line 432
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    goto :goto_20

    .line 435
    :cond_f
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v0, :cond_20

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_1a

    .line 437
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    goto :goto_20

    .line 438
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_20

    .line 439
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    :cond_20
    :goto_20
    return-void
.end method

.method public resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .registers 4

    if-eqz p2, :cond_7

    .line 2039
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    if-nez p2, :cond_1e

    if-eqz p3, :cond_10

    .line 2045
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    :cond_10
    if-nez p2, :cond_18

    if-eqz p1, :cond_18

    .line 2048
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    :cond_18
    if-nez p2, :cond_1e

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    .line 2055
    :cond_1e
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public setBackgroundColor(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1249
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    return-void
.end method

.method public setBackgroundColor(IZ)V
    .registers 8

    .line 1253
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 1254
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p2, :cond_e

    .line 1260
    iget p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 1266
    :cond_e
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_35

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 1269
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    aput p1, v2, v0

    .line 1268
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_35
    return-void
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 2

    .line 453
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 454
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V
    .registers 4

    if-eqz p1, :cond_3b

    .line 1608
    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_24

    .line 1614
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_3b

    .line 1615
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set non-adjacent root as launch adjacent flag root tr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1609
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set not mCreatedByOrganizer as launch adjacent flag root tr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1621
    :cond_3b
    :goto_3b
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V
    .registers 6

    .line 1578
    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_2e

    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1586
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1588
    :cond_10
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;-><init>(Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef-IA;)V

    .line 1589
    iput-object p1, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 1592
    :goto_18
    iput-object p3, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 1593
    iput-object p2, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 1594
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1595
    :cond_28
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void

    .line 1579
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t set not mCreatedByOrganizer as launch root tr="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startFreeformTaskPinning(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 2658
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformTaskPinningController;->startPinning(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public stopFreeformTaskPinning(Lcom/android/server/wm/Task;ZLjava/lang/String;)V
    .registers 4

    .line 2662
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformTaskPinningController:Lcom/android/server/wm/FreeformTaskPinningController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/FreeformTaskPinningController;->stopPinning(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    return-void
.end method

.method public supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p3, :cond_a

    .line 2137
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->shouldCheckMinWidthHeightForMultiWindow()Z

    move-result p3

    if-nez p3, :cond_a

    return v0

    :cond_a
    if-gtz p1, :cond_f

    if-gtz p2, :cond_f

    return v0

    .line 2144
    :cond_f
    iget-object p3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    const/4 v1, -0x1

    if-ne p3, v1, :cond_17

    return v0

    :cond_17
    if-nez p3, :cond_20

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result p3

    if-eqz p3, :cond_20

    return v0

    .line 2156
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 2157
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_41

    .line 2159
    iget-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    iget p3, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    float-to-int p0, p2

    if-gt p1, p0, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v3

    :goto_40
    return v0

    .line 2163
    :cond_41
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    iget p3, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p3, p3

    mul-float/2addr p1, p3

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-gt p2, p0, :cond_56

    goto :goto_57

    :cond_56
    move v0, v3

    :goto_57
    return v0
.end method

.method public supportsNonResizableMultiWindow()Z
    .registers 4

    .line 2116
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 2118
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    const/4 v2, 0x1

    if-nez v0, :cond_16

    if-ne v1, v2, :cond_c

    goto :goto_16

    :cond_c
    const/4 v0, -0x1

    if-ne v1, v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 2128
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    return v2
.end method

.method public taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I
    .registers 8

    .line 2729
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    return v1

    .line 2734
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_43

    .line 2735
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2736
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_40

    .line 2744
    :cond_2c
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2745
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz p3, :cond_3d

    .line 2747
    iput-object v2, p3, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 2749
    :cond_3d
    iget p0, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_43
    return v1
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x0

    .line 2184
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2200
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    if-nez v2, :cond_51

    .line 2205
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_17
    if-ltz v3, :cond_51

    .line 2206
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 2207
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 2209
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4e

    goto :goto_51

    .line 2215
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v4, v0, :cond_4e

    .line 2217
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_4e

    .line 2220
    :cond_47
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4e

    goto :goto_51

    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    :cond_51
    :goto_51
    if-eqz v2, :cond_6e

    if-eqz p1, :cond_6e

    .line 2229
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2230
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p0

    .line 2231
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 2232
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    if-nez p0, :cond_6e

    return-object v1

    :cond_6e
    return-object v2
.end method

.method public unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .registers 2

    .line 2497
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 1835
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p1, :cond_a

    return-void

    .line 1842
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1843
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 1846
    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 1847
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget p1, p1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, -0x1

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_28

    .line 1849
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    .line 1850
    :goto_28
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-nez p0, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    .line 1847
    :goto_31
    invoke-static {p1, v1, v0, v2, p2}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedRootTask(IIIILjava/lang/String;)V

    return-void
.end method

.method public updatePipWithInternalPresentationOnly(Z)V
    .registers 3

    .line 2713
    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHasPipWithInternalPresentationOnly:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2715
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHasPipWithInternalPresentationOnly:Z

    .line 2717
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ShellRoot;

    if-eqz p1, :cond_2d

    .line 2719
    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2720
    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2721
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHasPipWithInternalPresentationOnly:Z

    invoke-virtual {v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    return-void
.end method

.method public validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 4

    .line 2105
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return p1
.end method
