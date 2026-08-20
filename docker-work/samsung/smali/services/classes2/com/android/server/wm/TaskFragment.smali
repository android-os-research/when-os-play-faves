.class public Lcom/android/server/wm/TaskFragment;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;,
        Lcom/android/server/wm/TaskFragment$TaskFragmentVisibility;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMBEDDING_ALLOWED:I = 0x0

.field public static final EMBEDDING_DISALLOWED_MIN_DIMENSION_VIOLATION:I = 0x2

.field public static final EMBEDDING_DISALLOWED_NEW_TASK:I = 0x3

.field public static final EMBEDDING_DISALLOWED_UNTRUSTED_HOST:I = 0x1

.field public static final INVALID_MIN_SIZE:I = -0x1

.field public static final SHOW_APP_STARTING_PREVIEW:Z = true

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TASK_FRAGMENT_VISIBILITY_INVISIBLE:I = 0x2

.field public static final TASK_FRAGMENT_VISIBILITY_VISIBLE:I = 0x0

.field public static final TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1


# instance fields
.field public mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBackScreenshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public mClearedTaskForReuse:Z

.field public mClearedTaskFragmentForPip:Z

.field public mCreatedByOrganizer:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDelayLastActivityRemoval:Z

.field public mDimmer:Lcom/android/server/wm/Dimmer;

.field public final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field public final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

.field public final mFragmentToken:Landroid/os/IBinder;

.field public final mIsEmbedded:Z

.field public mIsRemovalRequested:Z

.field public final mLastParentBounds:Landroid/graphics/Rect;

.field public mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mLastSurfaceSize:Landroid/graphics/Point;

.field public mMinHeight:I

.field public mMinWidth:I

.field public mMoveAdjacentTogether:Z

.field public mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mTaskFragmentAppearedSent:Z

.field public mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public mTaskFragmentOrganizerProcessName:Ljava/lang/String;

.field public mTaskFragmentOrganizerUid:I

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpFullBounds:Landroid/graphics/Rect;

.field public final mTmpInsets:Landroid/graphics/Rect;

.field public final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$0qobCBlCTSjZscLak05TNMcuoHY(Lcom/android/server/wm/TaskFragment;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/TaskFragment;->lambda$dump$14(ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$53KSq56Od5pS7Y2FRCpGimTyPrs([I[ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->lambda$calculateMinDimension$12([I[ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6JpDAuD-Mx9UH8H8z6IiSdFB7x4(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$isFullyTrustedEmbedding$0(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8h3BQU5sM5hHKpLC58wxTI7BuVI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$getTopNonFinishingActivity$4(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OcpOUFcSp1FcPvrFRTXyY7ABU6E(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$topRunningActivity$9(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ofdwv8CBU7PDuLj4EtcPv-2JTfc(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$getTopNonFinishingActivityExcludingPopOver$6(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OuvDbRoBRROhTQueEhHc2ZEt3Fg(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$getTopNonFinishingActivity$5(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Reg5IdTlRKzj5Pn4yviF02WIEgU([ILcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$getNonFinishingActivityCount$10([ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TDzxymCYjzhdZh77sEH7mPpVL4s(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$topRunningActivity$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WJLVC68G7yUCFWk29C8tO0MoZxo(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$topRunningActivity$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pKI_07a_t7L8i9aJr9m0em8rl18(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$getTopNonFinishingActivity$3(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q77xa5YS28EmN0qaij-drM-u_C8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tNYgwQlRRNk1kSWnHMgkqKm6sYE(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$redrawTaskFragment$11(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vNpzbJN4f-i3O-tk-V4kJK_IAqw(Lcom/android/server/wm/TaskFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$clearLastPausedActivity$13(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjcPfzjJhlOyUjaUk61LVu9vQog(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment;->lambda$isAllowedToBeEmbeddedInTrustedMode$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xsW-ASiDukYQdk0dDnG88QtD4m4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/TaskFragment;->lambda$getTopNonFinishingActivity$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V
    .registers 5

    const/4 v0, 0x1

    .line 369
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V
    .registers 7

    .line 374
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 222
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 270
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 276
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, -0x1

    .line 299
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 313
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    .line 316
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 317
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 318
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastParentBounds:Landroid/graphics/Rect;

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    .line 328
    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 330
    new-instance v1, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 377
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 378
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 379
    iput-boolean p3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 380
    iput-boolean p4, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 381
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 383
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 384
    new-instance p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    return-void
.end method

.method public static computeScreenLayoutOverride(III)I
    .registers 4

    and-int/lit8 p0, p0, 0x3f

    .line 2731
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2732
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2733
    invoke-static {p0, v0, p1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p0

    return p0
.end method

.method public static fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_4
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0
.end method

.method public static hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 1274
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method public static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 2708
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_f

    .line 2709
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2710
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2712
    :cond_f
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1e

    .line 2713
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 2714
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2716
    :cond_1e
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2d

    .line 2717
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 2718
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2720
    :cond_2d
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, p1, :cond_3c

    .line 2721
    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    .line 2722
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :cond_3c
    return-void
.end method

.method public static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .registers 2

    .line 2427
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2429
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_b
    const/4 v0, 0x0

    .line 2431
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2432
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    return-void
.end method

.method public static isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4

    .line 688
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 924
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 926
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_33

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p1, p1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz p1, :cond_33

    .line 929
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p1, :cond_33

    .line 930
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 931
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_33

    return v2

    :cond_33
    return v1

    .line 940
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_3b

    if-eq p0, p1, :cond_3b

    return v1

    .line 946
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p1

    if-eqz p1, :cond_42

    return v2

    .line 952
    :cond_42
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_4d

    .line 953
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return v2

    :cond_4d
    return v1
.end method

.method public static isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 1280
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$calculateMinDimension$12([I[ILcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 2976
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 2979
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object p2

    if-nez p2, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 2983
    aget v1, p0, v0

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p0, v0

    .line 2984
    aget p0, p1, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p1, v0

    return-void
.end method

.method public static synthetic lambda$clearLastPausedActivity$13(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    const/4 v0, 0x0

    .line 3077
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method private synthetic lambda$dump$14(ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_5

    .line 3325
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_5
    if-eqz p3, :cond_a

    .line 3328
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 3331
    :cond_a
    invoke-virtual {p0, p4, p2, p5, p6}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getNonFinishingActivityCount$10([ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1038
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 1039
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_b
    return-void
.end method

.method public static synthetic lambda$getTopNonFinishingActivity$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 981
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$getTopNonFinishingActivity$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 983
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static synthetic lambda$getTopNonFinishingActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 987
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$getTopNonFinishingActivity$5(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 990
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static synthetic lambda$getTopNonFinishingActivityExcludingPopOver$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 995
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$isAllowedToBeEmbeddedInTrustedMode$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$isFullyTrustedEmbedding$0(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 700
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$redrawTaskFragment$11(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 2749
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2750
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 2751
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    .line 2752
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 2754
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    .line 2755
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_22
    return-void
.end method

.method public static synthetic lambda$topRunningActivity$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$topRunningActivity$8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1026
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private synthetic lambda$topRunningActivity$9(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1032
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const v0, 0x7fffffff

    .line 2137
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 13

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    .line 2143
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 2144
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 2146
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    if-eqz v4, :cond_1a

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_25

    .line 2151
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_25

    move v6, v3

    goto :goto_26

    :cond_25
    move v6, v1

    :goto_26
    if-eqz v5, :cond_2d

    .line 2154
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v7

    goto :goto_2e

    :cond_2d
    move v7, v1

    .line 2156
    :goto_2e
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    if-eqz v4, :cond_86

    if-eqz v5, :cond_86

    if-eqz v0, :cond_7d

    .line 2161
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 2162
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz p2, :cond_59

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x7fe146a

    new-array v9, v3, [Ljava/lang/Object;

    aput-object p2, v9, v1

    const-string p2, "Screenshotting Activity %s"

    invoke-static {v4, v8, v1, p2, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    :cond_59
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 2165
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v8, Landroid/graphics/Rect;

    .line 2167
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v8, v1, v1, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2165
    invoke-static {v4, v8, p2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p2

    .line 2169
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 2172
    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/wm/Task;->onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V

    :cond_86
    return-void
.end method

.method public asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    return-object p0
.end method

.method public awakeFromSleeping()V
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleeping: previously pausing activity didn\'t pause"

    .line 846
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    :cond_11
    return-void
.end method

.method public calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I
    .registers 4
    .annotation build Landroid/app/WindowConfiguration$EmbedActivityMode;
    .end annotation

    .line 3284
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3285
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_23

    .line 3287
    :cond_11
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_19

    const/4 p0, 0x2

    goto :goto_24

    .line 3289
    :cond_19
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-ne p0, p1, :cond_21

    const/4 p0, 0x3

    goto :goto_24

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 9

    .line 2677
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2678
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2679
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_43

    .line 2680
    iget-object v0, p3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_15

    goto :goto_43

    .line 2683
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2685
    iget-object p3, p3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p3

    .line 2686
    iget v0, p4, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2690
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    iget p4, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p3, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2691
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, p1, p0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public calculateMinDimension()Landroid/graphics/Point;
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 2975
    new-instance v2, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;-><init>([I[I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2986
    new-instance p0, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v1, v1, v2

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public canBeAnimationTarget()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1789
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public canCreateRemoteAnimationTarget()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final cleanUp()V
    .registers 2

    .line 3223
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v0, :cond_b

    .line 3224
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    :cond_b
    return-void
.end method

.method public cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_9

    .line 746
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 749
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_14

    if-ne v0, p1, :cond_14

    const-string v0, "cleanUpActivityReferences"

    .line 750
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 754
    :cond_14
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result p0

    if-eqz p0, :cond_31

    .line 755
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p0, p1, :cond_31

    .line 756
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecordGroup;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 759
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    return-void
.end method

.method public clearLastPausedActivity()V
    .registers 2

    .line 3077
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public completePause(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2004
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2005
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x1384aa78

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_c8

    .line 2008
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2009
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    .line 2010
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v7, "completePausedLocked"

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 2011
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_49

    .line 2016
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_43

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x129e233e

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v5, v6, v4, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2017
    :cond_43
    invoke-virtual {v0, v4, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_c1

    .line 2019
    :cond_49
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 2020
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_75

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x46c5ef9f

    const/16 v11, 0x3c

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v12, v2

    const/4 v6, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v12, v6

    invoke-static {v9, v10, v11, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2023
    :cond_75
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v6, :cond_93

    .line 2025
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_8d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x3c49af70

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2026
    :cond_8d
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_c1

    :cond_93
    if-eqz v5, :cond_99

    .line 2031
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_c1

    .line 2032
    :cond_99
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 2034
    :cond_a3
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    const-string v1, "completePauseLocked"

    .line 2037
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_c1

    .line 2041
    :cond_ac
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_c0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1f17322e

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v1, v5, v4, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c0
    move-object v0, v3

    :cond_c1
    :goto_c1
    if-eqz v0, :cond_c6

    .line 2048
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2050
    :cond_c6
    iput-object v3, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_c8
    if-eqz p1, :cond_ef

    .line 2054
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_de

    .line 2055
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-nez v1, :cond_de

    .line 2056
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_ef

    :cond_de
    if-eqz p1, :cond_e4

    .line 2061
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :cond_e4
    if-eqz v3, :cond_ea

    if-eqz v0, :cond_ef

    if-eq v3, v0, :cond_ef

    .line 2067
    :cond_ea
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_ef
    :goto_ef
    if-eqz v0, :cond_f4

    .line 2073
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2076
    :cond_f4
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p2, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2081
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez p1, :cond_10f

    .line 2082
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_11c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result p1

    if-eqz p1, :cond_11c

    .line 2083
    :cond_10f
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2084
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_11c
    return-void
.end method

.method public computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    .line 2395
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method public computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .registers 5

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    .line 2403
    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2404
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_8
    const/4 v0, 0x0

    .line 2406
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method public computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 2446
    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-nez v4, :cond_16

    .line 2448
    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2451
    :cond_16
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_21

    .line 2453
    iget v5, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    :cond_21
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2459
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v7

    if-nez v7, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_57

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v7, :cond_57

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v7

    iget-object v8, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2461
    invoke-static {v8}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v8

    .line 2460
    invoke-static {v4, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->needToUpdateDensity(IIZ)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 2462
    iget v7, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getScaleDownDensity(II)I

    move-result v7

    if-lez v7, :cond_57

    int-to-float v5, v7

    mul-float/2addr v5, v6

    .line 2466
    iput v7, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2476
    :cond_57
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2477
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_76

    .line 2478
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6c

    goto :goto_76

    .line 2482
    :cond_6c
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2483
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    goto :goto_7c

    .line 2479
    :cond_76
    :goto_76
    iget-object v7, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    :goto_7c
    const/4 v9, 0x0

    if-eqz v3, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_81
    move v10, v9

    .line 2490
    :goto_82
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v11, :cond_90

    .line 2491
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 2493
    :cond_90
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v12, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2494
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-nez v10, :cond_c6

    const/4 v12, 0x5

    if-eq v4, v12, :cond_c6

    if-eqz v7, :cond_ab

    .line 2499
    iget-object v12, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_bb

    .line 2504
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    if-eqz v12, :cond_ba

    .line 2506
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_bb

    :cond_ba
    const/4 v12, 0x0

    :goto_bb
    if-eqz v12, :cond_c6

    .line 2508
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c6

    .line 2509
    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2522
    :cond_c6
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v13, 0x2

    if-eqz v12, :cond_cf

    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_209

    :cond_cf
    if-nez v10, :cond_e6

    .line 2524
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_e6

    .line 2525
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2526
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_153

    :cond_e6
    if-nez v10, :cond_107

    if-nez p3, :cond_f0

    .line 2535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-eqz v12, :cond_107

    :cond_f0
    if-eqz p3, :cond_f5

    move-object/from16 v3, p3

    goto :goto_fd

    .line 2538
    :cond_f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 2544
    :goto_fd
    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v12, v14, v3}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    goto :goto_153

    .line 2548
    :cond_107
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_116

    .line 2550
    iget-object v12, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    :cond_116
    if-eq v12, v14, :cond_149

    if-eqz v10, :cond_149

    .line 2553
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2554
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2555
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v14, v12}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2556
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v12

    invoke-static {v14, v15, v8}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2558
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v12

    invoke-static {v8, v14, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2560
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_153

    .line 2563
    :cond_149
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2564
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2575
    :goto_153
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v3, :cond_16c

    .line 2576
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    if-eqz v7, :cond_16a

    if-nez v10, :cond_16a

    .line 2578
    iget v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2579
    :cond_16a
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2581
    :cond_16c
    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v3, :cond_185

    .line 2582
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    if-eqz v7, :cond_183

    if-nez v10, :cond_183

    .line 2584
    iget v7, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2585
    :cond_183
    iput v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2588
    :cond_185
    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v3, :cond_209

    if-ne v4, v13, :cond_19c

    .line 2596
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2597
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19c

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    const/4 v9, 0x1

    .line 2598
    :cond_19c
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v3

    if-nez v3, :cond_1aa

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2600
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_1c2

    :cond_1aa
    if-nez v9, :cond_1c2

    .line 2612
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2613
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_209

    .line 2615
    :cond_1c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 2621
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 2622
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_209

    .line 2627
    :cond_1d5
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2628
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_209

    .line 2631
    :cond_1e0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v3, :cond_209

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_209

    .line 2632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result v3

    if-eqz v3, :cond_209

    .line 2633
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2634
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2633
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2641
    :cond_209
    :goto_209
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v3, :cond_218

    .line 2642
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v3, v4, :cond_215

    const/4 v8, 0x1

    goto :goto_216

    :cond_215
    move v8, v13

    .line 2643
    :goto_216
    iput v8, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2645
    :cond_218
    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v3, :cond_240

    .line 2649
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 2650
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 2653
    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v4, :cond_233

    move v3, v4

    .line 2656
    :cond_233
    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v4, :cond_238

    move v0, v4

    .line 2660
    :cond_238
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2, v3, v0}, Lcom/android/server/wm/TaskFragment;->computeScreenLayoutOverride(III)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I

    :cond_240
    return-void
.end method

.method public computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 5

    if-eqz p3, :cond_5

    .line 2415
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_5
    const/4 v0, 0x0

    .line 2417
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method public final containsStoppingActivity()Z
    .registers 4

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_20

    .line 897
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 898
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 6

    .line 2199
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v0

    if-nez v0, :cond_b

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_f

    .line 2204
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2206
    :goto_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2207
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_58

    if-eqz v0, :cond_58

    .line 2208
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_58

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_58

    .line 2210
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_35
    if-ltz v1, :cond_6c

    .line 2211
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2212
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 2213
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 2214
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    move-object v0, p0

    goto :goto_6c

    :cond_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    .line 2219
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v1

    if-nez v1, :cond_6c

    if-eqz v0, :cond_6c

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 2220
    invoke-virtual {v1}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivityExcludingPopOver()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_6c
    :goto_6c
    if-eqz v0, :cond_73

    .line 2224
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    goto :goto_74

    :cond_73
    const/4 p0, 0x0

    :goto_74
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9

    .line 3374
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3377
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3b
    if-ltz v1, :cond_68

    .line 3378
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_65

    .line 3383
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :cond_68
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .registers 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 3323
    new-instance v10, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/TaskFragment;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x1

    if-nez p6, :cond_21

    .line 3337
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    const/4 v10, 0x0

    move v1, v0

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 3342
    :goto_22
    iget-object v2, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_29
    if-ltz v2, :cond_99

    .line 3343
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3344
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const-string v4, "  "

    if-eqz v3, :cond_63

    .line 3345
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_96

    .line 3347
    :cond_63
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 3348
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    xor-int/lit8 v18, p4, 0x1

    const/16 v21, 0x0

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    const-string v16, "Hist "

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v13, v2

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, v10

    .line 3348
    invoke-static/range {v11 .. v23}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    :cond_96
    :goto_96
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    :cond_99
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 3407
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 3411
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 3413
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10500000002L

    .line 3415
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    .line 3416
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000004L

    .line 3417
    iget p4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 3418
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3420
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 12

    .line 3358
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3359
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3360
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_44

    .line 3364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsRemovalRequested=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_44
    if-eqz p3, :cond_60

    .line 3367
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mLastPausedActivity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    :cond_60
    return-void
.end method

.method public ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    .line 2390
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 2

    .line 2186
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2187
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public fillsParent()Z
    .registers 3

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_22

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_3a

    .line 2100
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 2103
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_3a

    .line 2108
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 2111
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3a
    if-eqz v2, :cond_3f

    .line 2115
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    const/4 v3, 0x0

    if-ltz v0, :cond_25

    .line 2122
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 2125
    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    move v2, v3

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_25
    if-eqz v2, :cond_2c

    .line 2131
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    return v3
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 2090
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2091
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getActivityType()I
    .registers 3

    .line 2738
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    if-nez v0, :cond_21

    .line 2739
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_21

    .line 2742
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2743
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    :goto_20
    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 3231
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3232
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 3235
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 549
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 532
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 533
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public getFragmentToken()Landroid/os/IBinder;
    .registers 1

    .line 2991
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getNonFinishingActivityCount()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1037
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 3

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_5

    return-object p0

    .line 722
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_16

    :cond_15
    move-object p0, v1

    :goto_16
    if-eqz p0, :cond_1c

    .line 723
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :cond_1c
    return-object v1
.end method

.method public getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 528
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000009L

    return-wide v0
.end method

.method public getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 572
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 563
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 566
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_12

    .line 567
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 542
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    move-object p0, v1

    :goto_1c
    if-eqz p0, :cond_22

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_22
    return-object v1
.end method

.method public getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .registers 13

    .line 2940
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2941
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 2942
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2943
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2944
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    if-eqz v1, :cond_38

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 2945
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2946
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    if-ne v2, v3, :cond_38

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_38

    .line 2948
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2951
    :cond_3b
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2952
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2953
    new-instance v11, Landroid/window/TaskFragmentInfo;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 2955
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    .line 2956
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v4

    .line 2958
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    iget-boolean v8, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    iget-boolean v9, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 2963
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Landroid/graphics/Point;ZZLandroid/graphics/Point;)V

    return-object v11
.end method

.method public getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .registers 1

    .line 2996
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method public final getTaskId()I
    .registers 2

    .line 2383
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_e

    :cond_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method public getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x1

    .line 961
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    .line 965
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    if-eqz p1, :cond_18

    if-eqz p2, :cond_e

    .line 981
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 983
    :cond_e
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_18
    if-eqz p2, :cond_24

    .line 987
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 989
    :cond_24
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopNonFinishingActivityExcludingPopOver()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 995
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 511
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    const/4 v2, 0x0

    if-ltz v1, :cond_2e

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v0, :cond_1a

    if-ne v3, v0, :cond_1a

    .line 516
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_28

    .line 517
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 518
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :cond_28
    :goto_28
    if-eqz v2, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2e
    return-object v2
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 438
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    const/4 v2, 0x0

    if-ltz v1, :cond_2e

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v0, :cond_1a

    if-ne v3, v0, :cond_1a

    .line 443
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_28

    .line 444
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 445
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :cond_28
    :goto_28
    if-eqz v2, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2e
    return-object v2
.end method

.method public getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 13
    .annotation build Lcom/android/server/wm/TaskFragment$TaskFragmentVisibility;
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_186

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_186

    .line 1069
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityLaunchedBehind()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    return v2

    .line 1074
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isUnderHomeRootTask()Z

    move-result v0

    if-eqz v0, :cond_3e

    return v1

    .line 1092
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_58

    .line 1094
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v3

    if-ne v3, v1, :cond_54

    return v1

    :cond_54
    if-ne v3, v4, :cond_58

    move v3, v4

    goto :goto_59

    :cond_58
    move v3, v2

    .line 1105
    :goto_59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    move v7, v2

    :goto_64
    if-ltz v6, :cond_182

    .line 1107
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-nez v8, :cond_6e

    goto/16 :goto_17e

    .line 1110
    :cond_6e
    invoke-static {v8}, Lcom/android/server/wm/TaskFragment;->hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-ne v8, p0, :cond_c8

    .line 1112
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    if-nez v7, :cond_b4

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1117
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_8a
    if-ltz v0, :cond_b4

    .line 1118
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskFragment;

    .line 1119
    iget-object v7, v6, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v7, p0, :cond_97

    goto :goto_b0

    .line 1132
    :cond_97
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_b3

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 1133
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_b0

    goto :goto_b3

    :cond_b0
    :goto_b0
    add-int/lit8 v0, v0, -0x1

    goto :goto_8a

    :cond_b3
    :goto_b3
    return v1

    :cond_b4
    if-nez v9, :cond_c4

    if-eqz p1, :cond_be

    .line 1141
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_c4

    .line 1142
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_c5

    :cond_c4
    move v2, v4

    :cond_c5
    move v4, v2

    goto/16 :goto_182

    :cond_c8
    if-nez v9, :cond_cc

    goto/16 :goto_17e

    .line 1150
    :cond_cc
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    if-ne v9, v4, :cond_12c

    .line 1154
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_102

    .line 1155
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v9

    if-eqz v9, :cond_102

    iget-object v9, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1156
    invoke-virtual {v9}, Lcom/android/server/wm/WindowOrganizerController;->whileEnterSplitWithSingleStage()Z

    move-result v9

    if-eqz v9, :cond_102

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v9

    if-eqz v9, :cond_17e

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v9

    if-nez v9, :cond_102

    goto/16 :goto_17e

    .line 1164
    :cond_102
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_123

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 1166
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v3

    if-nez v3, :cond_123

    return v1

    .line 1172
    :cond_123
    invoke-static {v8, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_12b

    :goto_129
    move v3, v4

    goto :goto_17e

    :cond_12b
    return v1

    .line 1179
    :cond_12c
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_NOT_SUPPORT_MULTI_WINDOW:Z

    if-eqz v10, :cond_147

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v10

    if-eqz v10, :cond_147

    const/4 v10, 0x5

    if-ne v9, v10, :cond_147

    .line 1181
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v10

    if-eqz v10, :cond_147

    .line 1182
    invoke-static {v8, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_146

    goto :goto_129

    :cond_146
    return v1

    :cond_147
    const/4 v10, 0x6

    if-ne v9, v10, :cond_158

    .line 1191
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v9

    if-eqz v9, :cond_158

    .line 1192
    invoke-static {v8, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_157

    goto :goto_129

    :cond_157
    return v1

    .line 1225
    :cond_158
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_17e

    .line 1226
    iget-object v9, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v9, :cond_17e

    .line 1227
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17b

    .line 1228
    invoke-virtual {v8, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_178

    iget-object v3, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1229
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_177

    goto :goto_178

    :cond_177
    return v1

    :cond_178
    :goto_178
    move v3, v4

    move v7, v3

    goto :goto_17e

    .line 1245
    :cond_17b
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17e
    :goto_17e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_64

    :cond_182
    :goto_182
    if-nez v4, :cond_185

    return v1

    :cond_185
    return v3

    :cond_186
    :goto_186
    return v1
.end method

.method public handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 9

    const-string v0, "handleAppDied"

    .line 830
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v4, p1, :cond_27

    .line 833
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_24

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x5d3c3b70

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :cond_24
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_28

    :cond_27
    move v1, v3

    .line 838
    :goto_28
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_32

    .line 839
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_32
    return v1
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 2

    .line 3189
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3192
    :cond_8
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result p0

    return p0
.end method

.method public hasDirectChildActivities()Z
    .registers 4

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 737
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 3

    if-eqz p1, :cond_18

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_18

    .line 428
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {p0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public inStageMainOrSide(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method public isAllowedToBeEmbeddedInTrustedMode()Z
    .registers 2

    .line 709
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .annotation build Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;
    .end annotation

    .line 595
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I

    move-result p0

    return p0
.end method

.method public isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I
    .registers 4
    .annotation build Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;
    .end annotation

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p2

    if-nez p2, :cond_e

    const/4 p0, 0x1

    return p0

    .line 612
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 651
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 6

    .line 663
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 667
    :cond_8
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p1

    .line 668
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    return v2

    .line 674
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 675
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 677
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    return v1
.end method

.method public isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 640
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 641
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_20

    .line 646
    :cond_16
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    :goto_20
    return v1
.end method

.method public isAttached()Z
    .registers 1

    .line 554
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 555
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isDelayLastActivityRemoval()Z
    .registers 1

    .line 3177
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return p0
.end method

.method public isEmbedded()Z
    .registers 3

    .line 582
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 585
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 587
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 588
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    return v1

    :cond_1c
    return v0
.end method

.method public isEmbeddedTaskFragmentInPip()Z
    .registers 2

    .line 3099
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public isEmbeddedTaskInMultiWindow()Z
    .registers 4

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3309
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3310
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_2e

    .line 3311
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isFocusableAndVisible()Z
    .registers 2

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isForceHidden()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isFullyTrustedEmbedding(I)Z
    .registers 3

    .line 700
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLeafTaskFragment()Z
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 771
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public isOrganized()Z
    .registers 1

    .line 3001
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isOrganizedTaskFragment()Z
    .registers 1

    .line 3006
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isReadyToTransit()Z
    .registers 7

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 3022
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_b8

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_14

    goto/16 :goto_b8

    .line 3026
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 3031
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    .line 3035
    :cond_26
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 3036
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3040
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_73

    .line 3041
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3043
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 3044
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_6f

    .line 3045
    :cond_5f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 3046
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_6f

    :cond_6e
    move-object v3, v4

    :goto_6f
    if-ne v3, v0, :cond_44

    return v2

    :cond_72
    return v1

    .line 3058
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3059
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_9c

    .line 3060
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 3061
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3062
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :cond_9c
    :goto_9c
    if-eqz v4, :cond_b7

    .line 3064
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eq v4, p0, :cond_b7

    .line 3065
    invoke-virtual {v4, v2, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b7

    .line 3066
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    if-eqz p0, :cond_b7

    return v1

    :cond_b7
    return v2

    :cond_b8
    :goto_b8
    return v1
.end method

.method public isSplitEmbedded()Z
    .registers 4

    .line 3297
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3299
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1

    .line 3301
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3302
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1

    :cond_30
    return v2
.end method

.method public isTaskVisibleRequested()Z
    .registers 1

    .line 3011
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 3012
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isTopActivityFocusable()Z
    .registers 2

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1047
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p0

    goto :goto_1e

    .line 1048
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public final isTopActivityLaunchedBehind()Z
    .registers 1

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1289
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 916
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 917
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 916
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 919
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_28
    return v1
.end method

.method public onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .registers 7

    const-string v0, "onActivityStateChanged"

    .line 788
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_22

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_22

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 794
    :cond_22
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 795
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordGroup;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p1, :cond_43

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_43

    .line 797
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecordGroup;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 801
    :cond_43
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p2, v0, :cond_b0

    .line 802
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz p2, :cond_6a

    .line 803
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set resumed activity to:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_6a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 806
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p1, p2, :cond_8a

    .line 807
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_a5

    .line 810
    :cond_8a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p2

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 812
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 814
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :cond_9e
    if-ne p1, v2, :cond_a5

    .line 816
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 820
    :cond_a5
    :goto_a5
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_b0
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 2843
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2846
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_11

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_1c

    .line 2848
    :cond_11
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2849
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Point;->set(II)V

    :cond_1c
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 2855
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2857
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 2858
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_b
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 2178
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 2180
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 2768
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_1a

    .line 2769
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2771
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_1a

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    .line 2777
    :goto_1b
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2780
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->redrawTaskFragment()V

    .line 2783
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_70

    .line 2784
    :cond_35
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-nez p1, :cond_47

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 2785
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 2786
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_70

    .line 2787
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p1, :cond_70

    .line 2790
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 2792
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_69

    .line 2793
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2794
    :cond_65
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_6c

    .line 2798
    :cond_69
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    .line 2800
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2803
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 2805
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p1, :cond_8e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 2806
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mLastParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8e
    return-void
.end method

.method public prepareSurfaces()V
    .registers 5

    .line 3240
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3241
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void

    .line 3245
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3246
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 3251
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_40

    .line 3252
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 3253
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3254
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 3255
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    .line 3254
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3256
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    goto :goto_44

    .line 3259
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3261
    :goto_44
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3262
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3263
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_56
    return-void
.end method

.method public redrawTaskFragment()V
    .registers 3

    .line 2748
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public remove(ZLjava/lang/String;)V
    .registers 7

    .line 3134
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3135
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 3138
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 3141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3142
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_1f
    if-ltz p0, :cond_66

    .line 3144
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz p1, :cond_34

    .line 3145
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3146
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_63

    .line 3149
    :cond_34
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_54

    if-eqz p1, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFullscreenEmbedded()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 3150
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 3151
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_63

    .line 3156
    :cond_54
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 3157
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3158
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_63
    :goto_63
    add-int/lit8 p0, p0, -0x1

    goto :goto_1f

    :cond_66
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const/4 v0, 0x1

    .line 3108
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 5

    .line 3112
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 3113
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3116
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3118
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p2, :cond_3d

    .line 3121
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p2

    if-nez p2, :cond_3d

    .line 3122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeLastChild "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public removeImmediately()V
    .registers 3

    const/4 v0, 0x0

    .line 3203
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 3204
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 3205
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->cleanUp()V

    .line 3206
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v1, :cond_14

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 3208
    :cond_14
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 3209
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentVanished()V

    if-eqz v0, :cond_2b

    .line 3210
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2b

    .line 3215
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 3217
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_2b
    return-void
.end method

.method public removeImmediately(Ljava/lang/String;)V
    .registers 4

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove task fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    return-void
.end method

.method public resetAdjacentTaskFragment()V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v3, p0, :cond_12

    .line 409
    iput-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 411
    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 413
    :cond_12
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 414
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 9

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2262
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2266
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_36

    if-nez v0, :cond_36

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    move v0, v3

    .line 2276
    :cond_36
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_NOT_SUPPORT_MULTI_WINDOW:Z

    const/4 v5, 0x6

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_59

    if-eq v0, v1, :cond_59

    if-eqz v0, :cond_59

    .line 2279
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    move v2, v1

    goto :goto_4e

    :cond_4d
    move v2, v5

    :goto_4e
    if-eq v2, v0, :cond_59

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6, v2}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2290
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_c6

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_6f

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_c6

    .line 2293
    :cond_6f
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_b2

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_b2

    if-ne v0, v5, :cond_b2

    .line 2297
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v2

    .line 2296
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 2298
    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowEnableController;->deviceSupportsMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force allow multi-windowing mode for root stage task, taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 2299
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    :cond_b2
    if-eqz v0, :cond_b5

    move v1, v0

    .line 2305
    :cond_b5
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    if-eq v1, v4, :cond_c6

    .line 2311
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2317
    :cond_c6
    :goto_c6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 2320
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 2321
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2324
    :cond_d7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 1307
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/ActivityRecord;)Z
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, ": "

    const/4 v4, 0x1

    .line 1313
    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1315
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v6, :cond_15

    if-eqz p4, :cond_15

    move-object/from16 v5, p4

    :cond_15
    const/4 v6, 0x0

    if-eqz v5, :cond_5b9

    .line 1319
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v7

    if-nez v7, :cond_20

    goto/16 :goto_5b9

    .line 1323
    :cond_20
    iput-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    .line 1327
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v9, "ActivityTaskManager"

    const/4 v10, 0x0

    if-ne v8, v5, :cond_cf

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 1328
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 1330
    invoke-virtual {v7, v10, v6, v6, v4}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    if-eqz v0, :cond_70

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1337
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1338
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 1339
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionResumedAffordance()V

    .line 1340
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overridePendingAppTransitionResumedAffordance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_70
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_89

    .line 1346
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v5, :cond_89

    .line 1348
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "bubble-collapse"

    invoke-virtual {v2, v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1354
    :cond_89
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1359
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_ba

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v5, :cond_ba

    .line 1362
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_b5

    if-eqz v0, :cond_b5

    .line 1364
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_b5

    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1365
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v0

    if-eqz v0, :cond_b5

    goto :goto_ba

    .line 1370
    :cond_b5
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1373
    :cond_ba
    :goto_ba
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_ce

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x28467144

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v6, v10, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_ce
    return v6

    .line 1379
    :cond_cf
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v8

    if-nez v8, :cond_e4

    .line 1381
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_e3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x37c159ec

    invoke-static {v0, v1, v6, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e3
    return v6

    .line 1398
    :cond_e4
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v8, v5, :cond_fe

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 1401
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1402
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_fd

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x706c4a7b

    invoke-static {v0, v1, v6, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_fd
    return v6

    .line 1410
    :cond_fe
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v11, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v8, v11}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v8

    if-nez v8, :cond_12e

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping resume of top activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1418
    :cond_12e
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1420
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v8, :cond_14d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resuming "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_14d
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    .line 1425
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_16d

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eq v8, v11, :cond_16d

    .line 1430
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    goto :goto_16e

    :cond_16d
    move-object v11, v10

    :goto_16e
    if-nez p3, :cond_178

    .line 1433
    invoke-virtual {v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_178

    move v12, v4

    goto :goto_179

    :cond_178
    move v12, v6

    .line 1434
    :goto_179
    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v14, "resumeTopActivity"

    if-eqz v13, :cond_1be

    .line 1436
    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    if-eqz v13, :cond_198

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_198

    const-string/jumbo v13, "resumeTopActivity: clear userLeaving"

    .line 1438
    invoke-static {v9, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {v1, v6, v6, v5, v14}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v13

    or-int/2addr v12, v13

    goto :goto_1be

    .line 1443
    :cond_198
    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v13, :cond_1b2

    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x61dd69c

    move-object/from16 v16, v8

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v13, v8, v6

    const/4 v13, 0x0

    invoke-static {v15, v10, v6, v13, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b4

    :cond_1b2
    move-object/from16 v16, v8

    .line 1444
    :goto_1b4
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v8, v6, v5, v14}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v12, v8

    goto :goto_1c0

    :cond_1be
    :goto_1be
    move-object/from16 v16, v8

    :goto_1c0
    if-eqz v12, :cond_1fc

    .line 1449
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_1cf

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x14541918

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    :cond_1cf
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 1456
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v6, v4, v6, v6}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_1f6

    .line 1459
    :cond_1db
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_1f6

    .line 1463
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_1e9

    move v0, v4

    goto :goto_1ea

    :cond_1e9
    move v0, v6

    .line 1464
    :goto_1ea
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_1f1

    const-string v2, "next-top-activity"

    goto :goto_1f3

    :cond_1f1
    const-string v2, "next-activity"

    :goto_1f3
    invoke-virtual {v1, v5, v6, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    :cond_1f6
    :goto_1f6
    if-eqz v11, :cond_1fb

    .line 1469
    invoke-virtual {v11, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    :cond_1fb
    return v4

    .line 1472
    :cond_1fc
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v8, v5, :cond_227

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-eqz v8, :cond_227

    .line 1473
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v8

    if-eqz v8, :cond_227

    .line 1479
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1480
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_226

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x77d338ae

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v5, 0x0

    invoke-static {v1, v2, v6, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_226
    return v4

    .line 1487
    :cond_227
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v8, :cond_234

    iget-object v8, v8, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    move-object/from16 v18, v8

    goto :goto_236

    :cond_234
    const/16 v18, 0x0

    :goto_236
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v21

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v12, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object/from16 v17, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v17 .. v23}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 1493
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v0, :cond_258

    .line 1494
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityResumeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1501
    :cond_258
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 1509
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    :cond_26a
    if-eqz v2, :cond_2bc

    if-eq v2, v5, :cond_2bc

    .line 1512
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_2bc

    .line 1521
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v8, ", nowVisible="

    if-eqz v0, :cond_29c

    .line 1522
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1523
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2bc

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not waiting for visible to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2bc

    .line 1528
    :cond_29c
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2bc

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_2bc
    :goto_2bc
    :try_start_2bc
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1539
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    .line 1540
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v10, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v8, v6, v10}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2d4
    .catch Landroid/os/RemoteException; {:try_start_2bc .. :try_end_2d4} :catch_2f2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bc .. :try_end_2d4} :catch_2d5

    goto :goto_2f2

    :catch_2d5
    move-exception v0

    .line 1544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed trying to unstop package "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :catch_2f2
    :goto_2f2
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x2

    if-eqz v2, :cond_35c

    .line 1554
    iget-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_32a

    .line 1555
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v8, :cond_313

    .line 1556
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare close transition: prev="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_313
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_322

    .line 1560
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v8, v6

    goto :goto_326

    .line 1562
    :cond_322
    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v8, v4

    .line 1564
    :goto_326
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    goto :goto_378

    .line 1566
    :cond_32a
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v8, :cond_342

    .line 1567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare open transition: prev="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_342
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_350

    .line 1571
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_372

    .line 1574
    :cond_350
    iget-boolean v2, v5, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_357

    const/16 v2, 0x20

    goto :goto_358

    :cond_357
    move v2, v6

    .line 1573
    :goto_358
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_377

    .line 1578
    :cond_35c
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_365

    const-string v2, "Prepare open transition: no previous"

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_365
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_374

    .line 1581
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_372
    move v8, v6

    goto :goto_378

    .line 1583
    :cond_374
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_377
    move v8, v4

    :goto_378
    if-eqz v8, :cond_37e

    .line 1588
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_381

    .line 1590
    :cond_37e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1593
    :goto_381
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1595
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_57c

    .line 1596
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_3ba

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resume running: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " stopped="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visibleRequested="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_3ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_3cd

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3cb

    .line 1609
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    if-nez v2, :cond_3cb

    goto :goto_3cd

    :cond_3cb
    move v2, v6

    goto :goto_3ce

    :cond_3cd
    :goto_3cd
    move v2, v4

    .line 1612
    :goto_3ce
    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v8, :cond_3d8

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v8, :cond_3d8

    if-eqz v2, :cond_3e0

    .line 1613
    :cond_3d8
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1614
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1618
    :cond_3e0
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v16, :cond_3e7

    const/4 v2, 0x0

    goto :goto_3eb

    .line 1622
    :cond_3e7
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1623
    :goto_3eb
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v8

    .line 1625
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1627
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v10, :cond_409

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x54b744a8

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v10, v13, v6

    const/4 v10, 0x0

    invoke-static {v11, v12, v6, v10, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    :cond_409
    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v10, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1633
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 1643
    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_423

    .line 1652
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v5, v11, v4, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v10

    xor-int/2addr v10, v4

    goto :goto_424

    :cond_423
    move v10, v4

    :goto_424
    if-eqz v10, :cond_45b

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1663
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_445

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x127f5f19

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    aput-object v3, v7, v4

    const/4 v2, 0x0

    invoke-static {v8, v9, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_445
    if-eq v0, v5, :cond_44c

    .line 1667
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 1669
    :cond_44c
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_454

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_457

    .line 1670
    :cond_454
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1672
    :cond_457
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return v4

    .line 1677
    :cond_45b
    :try_start_45b
    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1678
    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v10, v11}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v10

    .line 1680
    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v11, :cond_49a

    .line 1682
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1683
    iget-boolean v13, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v13, :cond_49a

    if-lez v12, :cond_49a

    .line 1684
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v12, :cond_493

    .line 1685
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delivering results to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_493
    invoke-static {v11}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1691
    :cond_49a
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_4a5

    .line 1693
    invoke-static {v3, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 1692
    invoke-virtual {v10, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1698
    :cond_4a5
    iget-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 1700
    iget v3, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    .line 1701
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1700
    invoke-static {v3, v11, v12, v13}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 1705
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->boostPriority(Lcom/android/server/wm/ActivityRecord;)V

    .line 1709
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1710
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v11, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 1711
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1712
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1713
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v3

    .line 1714
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    .line 1713
    invoke-static {v3, v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    .line 1712
    invoke-virtual {v10, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1715
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1717
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_506

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x549b4288

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v6

    const/4 v12, 0x0

    invoke-static {v3, v10, v6, v12, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_506
    .catch Ljava/lang/Exception; {:try_start_45b .. :try_end_506} :catch_528

    .line 1743
    :cond_506
    :try_start_506
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_509
    .catch Ljava/lang/Exception; {:try_start_506 .. :try_end_509} :catch_50b

    goto/16 :goto_5b8

    :catch_50b
    move-exception v0

    move-object v1, v0

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during resume of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "resume-exception"

    .line 1748
    invoke-virtual {v5, v0, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return v4

    .line 1720
    :catch_528
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_543

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x4c4c64b

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v3, v7, v4

    const/4 v3, 0x0

    invoke-static {v10, v11, v6, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_543
    const-string/jumbo v0, "resumeTopActivityInnerLocked"

    .line 1722
    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    if-eqz v2, :cond_550

    .line 1726
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1729
    :cond_550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting because process died: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_56b

    .line 1731
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_576

    :cond_56b
    if-eqz v16, :cond_576

    .line 1733
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_576

    .line 1734
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1736
    :cond_576
    :goto_576
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return v4

    .line 1753
    :cond_57c
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_583

    .line 1754
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_59e

    .line 1757
    :cond_583
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1759
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_59e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_59e
    :goto_59e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_5b3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6eac4482

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v6

    const/4 v8, 0x0

    invoke-static {v2, v3, v6, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    :cond_5b3
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v5, v4, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :goto_5b8
    return v4

    :cond_5b9
    :goto_5b9
    return v6
.end method

.method public schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 11

    .line 1981
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x16946990

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1983
    :cond_17
    :try_start_17
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userLeaving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p4

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1987
    invoke-static {v3, p2, v4, p3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object p2

    .line 1986
    invoke-virtual {p4, v0, v2, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4d} :catch_4e

    goto :goto_61

    :catch_4e
    move-exception p2

    const-string p3, "ActivityTaskManager"

    const-string p4, "Exception thrown during pause"

    .line 1991
    invoke-static {p3, p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1992
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1993
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1994
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_61
    return-void
.end method

.method public final sendTaskFragmentAppeared()V
    .registers 3

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2925
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_9
    return-void
.end method

.method public sendTaskFragmentInfoChanged()V
    .registers 3

    .line 2917
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2918
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2919
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_9
    return-void
.end method

.method public final sendTaskFragmentVanished()V
    .registers 3

    .line 2930
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2931
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_9
    return-void
.end method

.method public setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_5

    return-void

    .line 398
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    if-eqz p1, :cond_11

    .line 400
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 401
    iput-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 402
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    :cond_11
    return-void
.end method

.method public setDelayLastActivityRemoval(Z)V
    .registers 4

    .line 3170
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_b

    const-string v0, "ActivityTaskManager"

    const-string v1, "Set delaying last activity removal on a non-embedded TF."

    .line 3171
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return-void
.end method

.method public setMinDimensions(II)V
    .registers 4

    .line 3086
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_b

    .line 3090
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 3091
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    return-void

    .line 3087
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "setResumedActivity"

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_b

    return-void

    .line 468
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_40

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResumedActivity taskFrag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-eqz p1, :cond_4d

    .line 473
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_4d

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 478
    :cond_4d
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 479
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 482
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result v0

    if-eqz v0, :cond_84

    if-eqz p1, :cond_74

    .line 483
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 484
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecordGroup;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 486
    :cond_74
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 487
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 488
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 493
    :cond_84
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    if-nez p1, :cond_9b

    .line 494
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_9b

    .line 495
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_9b

    .line 497
    iget-object p0, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    goto :goto_a2

    :cond_9b
    if-eqz p1, :cond_a2

    .line 499
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 2905
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2906
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz p1, :cond_15

    .line 2907
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 2908
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 2909
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2912
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentAppeared()V

    :cond_15
    return-void
.end method

.method public setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V
    .registers 4

    .line 420
    invoke-virtual {p1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 421
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 422
    iput-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    return-void
.end method

.method public shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1778
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public shouldDeferRemoval()Z
    .registers 3

    .line 3181
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3184
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public shouldRemoveSelfOnLastChildRemoval()Z
    .registers 2

    .line 3103
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public shouldSleepActivities()Z
    .registers 4

    .line 2235
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    .line 2237
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    goto :goto_13

    .line 2238
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    if-eqz v0, :cond_3d

    .line 2251
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result p0

    if-nez p0, :cond_43

    const/4 v2, 0x1

    goto :goto_43

    .line 2253
    :cond_3d
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    :cond_43
    :goto_43
    return v2
.end method

.method public shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final shouldStartChangeTransition(Landroid/graphics/Rect;)Z
    .registers 3

    .line 2864
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 2868
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStartChangeTransition(Landroid/graphics/Rect;ILandroid/graphics/Rect;)Z
    .registers 7

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5b

    .line 2877
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_2b

    .line 2879
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2b

    return v1

    :cond_2b
    const/4 p3, -0x1

    if-eq p2, p3, :cond_39

    .line 2887
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eq p2, v0, :cond_39

    return v1

    .line 2891
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 2892
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_4a

    .line 2893
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    if-eq p2, p3, :cond_4a

    return v1

    .line 2898
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 2899
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_5b
    :goto_5b
    return v1
.end method

.method public sleepIfPossible(Z)Z
    .registers 9

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 866
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_1b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x3ae234a6

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    const-string/jumbo v0, "sleep"

    .line 867
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_21
    :goto_21
    move v0, v3

    goto :goto_3d

    .line 870
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3c

    .line 872
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_21

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x71fb40de

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_3c
    move v0, v2

    :goto_3d
    if-nez p1, :cond_68

    .line 877
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->containsStoppingActivity()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 879
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v4, p1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x27e5a3e1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {p1, v0, v2, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 882
    :cond_62
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    move v0, v3

    :cond_68
    if-eqz v0, :cond_6d

    .line 888
    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    :cond_6d
    return v0
.end method

.method public smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 619
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    .line 623
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_2e

    .line 626
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object p0

    if-nez p0, :cond_1d

    return v1

    .line 630
    :cond_1d
    iget p1, p0, Landroid/graphics/Point;->x:I

    .line 631
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 632
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v2, p1, :cond_2d

    .line 633
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge p1, p0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method public final startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 5

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startPausing(ZZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 16

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_NOT_SUPPORT_MULTI_WINDOW:Z

    if-eqz v0, :cond_11

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskInMultiWindow()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    return v1

    .line 1830
    :cond_12
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_31

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0xed3cc31

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v0, v8, v1

    aput-object v5, v8, v3

    invoke-static {v6, v7, v1, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1833
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "ActivityTaskManager"

    if-eqz v0, :cond_64

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " state="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1835
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1840
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1843
    :cond_64
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1846
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_NOT_SUPPORT_MULTI_WINDOW:Z

    if-eqz v6, :cond_76

    if-nez v0, :cond_76

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskInMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1850
    :cond_76
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v6, :cond_9e

    if-eqz p3, :cond_91

    .line 1851
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_91

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1852
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecordGroup;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    goto :goto_9f

    :cond_91
    if-nez p3, :cond_9e

    if-eqz p4, :cond_9e

    .line 1853
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1854
    invoke-virtual {p4, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_9e

    goto :goto_9f

    :cond_9e
    move-object p4, v0

    :goto_9f
    if-nez p4, :cond_ae

    if-nez p3, :cond_ad

    const-string p1, "Trying to pause when nothing is resumed"

    .line 1862
    invoke-static {v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_ad
    return v1

    :cond_ae
    if-ne p4, p3, :cond_b6

    const-string p0, "Trying to pause activity that is in process of being resumed"

    .line 1869
    invoke-static {v5, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1873
    :cond_b6
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_ca

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x390b96d7

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {v5, v6, v1, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1874
    :cond_ca
    iput-object p4, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1875
    iput-object p4, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1876
    iget-boolean v0, p4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e9

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1877
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 1878
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    :cond_e9
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v5, "startPausingLocked"

    invoke-virtual {p4, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1883
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    if-eqz p3, :cond_124

    const-string/jumbo v5, "shouldAutoPipWhilePausing"

    .line 1891
    invoke-virtual {p4, v5, p1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz p1, :cond_115

    if-eqz v5, :cond_115

    .line 1893
    iget-object v6, p4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1894
    invoke-virtual {v6}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v6

    if-eqz v6, :cond_115

    move v5, v1

    move v6, v3

    goto :goto_126

    :cond_115
    if-nez v5, :cond_124

    .line 1899
    iget-object v5, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_121

    move v5, v3

    goto :goto_122

    :cond_121
    move v5, v1

    :goto_122
    move v6, v1

    goto :goto_126

    :cond_124
    move v5, v1

    move v6, v5

    .line 1905
    :goto_126
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-eqz v7, :cond_16a

    if-eqz v6, :cond_153

    .line 1907
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p5, p4, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result p1

    .line 1909
    sget-boolean p5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p5, :cond_175

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x41a8563f

    const/16 v9, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p5, v2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v7, v8, v9, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_175

    .line 1912
    :cond_153
    invoke-virtual {p0, p4, p1, v5, p5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1916
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object p5, p4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1917
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v7

    iget v8, p4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1916
    invoke-virtual {p1, p5, v2, v7, v8}, Landroid/app/ActivityManagerInternal;->onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_175

    .line 1922
    :cond_16a
    iput-object v4, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1923
    iput-object v4, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1924
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_175
    :goto_175
    if-nez p2, :cond_184

    .line 1929
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result p1

    if-nez p1, :cond_184

    .line 1930
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    .line 1934
    :cond_184
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_1a9

    if-nez p2, :cond_18e

    .line 1940
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_19a

    .line 1942
    :cond_18e
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p1, :cond_19a

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, -0x61575dd9

    invoke-static {p1, p2, v1, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_19a
    :goto_19a
    if-eqz v5, :cond_1a0

    .line 1948
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    return v1

    .line 1952
    :cond_1a0
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 1954
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return v3

    :cond_1a9
    if-eqz v6, :cond_1ba

    .line 1961
    invoke-virtual {p4, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-eqz p1, :cond_1ba

    .line 1962
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object p1

    if-ne p1, p0, :cond_1ba

    .line 1966
    invoke-virtual {p4, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 1971
    :cond_1ba
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz p1, :cond_1c6

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, -0x26ad4e02

    invoke-static {p1, p2, v1, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c6
    if-nez p3, :cond_1cd

    .line 1973
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_1cd
    return v1
.end method

.method public startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1817
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindow()Z
    .registers 2

    .line 2328
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindowInDefaultDisplayArea()Z
    .registers 2

    .line 2333
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2334
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2344
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 6

    .line 2349
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v2, 0x0

    if-nez v1, :cond_12

    if-eqz p2, :cond_11

    iget-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 2352
    invoke-virtual {p2}, Lcom/android/server/wm/MultiWindowEnableController;->deviceSupportsMultiWindow()Z

    move-result p2

    if-nez p2, :cond_12

    :cond_11
    return v2

    .line 2356
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_19

    return v2

    :cond_19
    if-nez p1, :cond_1c

    return v2

    .line 2365
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 2366
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 2367
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    .line 2368
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    .line 2366
    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z

    move-result p0

    return p0

    .line 2372
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p2

    if-nez p2, :cond_50

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result p2

    if-nez p2, :cond_50

    return v2

    .line 2377
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2378
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eqz p2, :cond_61

    .line 2379
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_62

    :cond_61
    const/4 p2, 0x0

    .line 2378
    :goto_62
    invoke-virtual {p1, v0, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x0

    .line 1000
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    .line 1004
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_20

    .line 1023
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 1025
    :cond_20
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_2a
    if-eqz p2, :cond_36

    .line 1030
    new-instance p1, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 1032
    :cond_36
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1294
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 1297
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    .line 1300
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :catchall_14
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1301
    throw p1
.end method

.method public final updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 6

    .line 2814
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_5

    return-void

    .line 2818
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_74

    .line 2822
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2823
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2824
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez p2, :cond_33

    .line 2825
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_33

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_33

    return-void

    .line 2829
    :cond_33
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_NOT_SUPPORT_MULTI_WINDOW:Z

    const/4 v2, -0x1

    if-eqz p2, :cond_54

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 2830
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_54

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 2831
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6f

    .line 2832
    :cond_54
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 2833
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6f

    .line 2836
    :cond_6a
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2838
    :goto_6f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_74
    :goto_74
    return-void
.end method

.method public final warnForNonLeafTaskFragment(Ljava/lang/String;)V
    .registers 3

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on non-leaf task fragment "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 3390
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3391
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3392
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3393
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1b

    :cond_19
    const/16 v0, -0x2710

    :goto_1b
    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    if-eqz p0, :cond_35

    .line 3395
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3394
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 3395
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_35
    const-string p0, "TaskFragment"

    .line 3394
    :goto_37
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3396
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
