.class public Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;,
        Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;,
        Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
    }
.end annotation


# static fields
.field public static final FAILSAFE_DELAY:J = 0x3e8L

.field public static final LATENCY_TRACKER_LOG_DELAY_MS:J = 0x12cL

.field public static final MODE_UNKNOWN:I = -0x1

.field public static final REORDER_KEEP_IN_PLACE:I = 0x0

.field public static final REORDER_MOVE_TO_ORIGINAL_POSITION:I = 0x2

.field public static final REORDER_MOVE_TO_TOP:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field public final mBackCallback:Landroid/window/IOnBackInvokedCallback;

.field public final mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

.field public mCancelDeferredWithScreenshot:Z

.field public mCancelOnNextTransitionStart:Z

.field public volatile mCanceled:Z

.field public final mController:Landroid/view/IRecentsAnimationController;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayId:I

.field public final mFailsafeRunnable:Ljava/lang/Runnable;

.field public mInputConsumerEnabled:Z

.field public mIsAddingTaskToTargets:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLinkedToDeathOfRunner:Z

.field public mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

.field public mNavigationBarAttachedToApp:Z

.field public final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingCancelWithScreenshotReorderMode:I

.field public final mPendingNewTaskTargets:Landroid/util/IntArray;

.field public mPendingStart:Z

.field public final mPendingTaskAppears:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestDeferCancelUntilNextTransition:Z

.field public mRunner:Landroid/view/IRecentsAnimationRunner;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldAttachNavBarToAppDuringTransition:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

.field public final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mTargetActivityType:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWillFinishToHome:Z


# direct methods
.method public static synthetic $r8$lambda$1LpEU3bh1EPOjM0YZ9GuJ4IEjE0(Lcom/android/server/wm/RecentsAnimationController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->lambda$logRecentsAnimationStartTime$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$420-KwIxmNwr-l0Y-S4X7RXTUpk(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->lambda$createWallpaperAnimations$6(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9xkcokzUhiYQY_6mZv1HWL4smVk(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->lambda$startAnimation$3(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ca6noyq_3ahEzwz04QNz67dceio(Lcom/android/server/wm/RecentsAnimationController;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/Task;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;->lambda$collectTaskRemoteAnimations$4(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f7wlzX-2wJWRo4nvgusgrbDgdsM(ILcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->lambda$initialize$1(ILcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcwA1mUxs5hJs8Ru_ltRmDfjDKE(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->lambda$initialize$0(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oWiB-OiltbcVHsjISTZI_Rb6g_0(Lcom/android/server/wm/Task;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->lambda$initialize$2(Lcom/android/server/wm/Task;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelDeferredWithScreenshot(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInputConsumerEnabled(Lcom/android/server/wm/RecentsAnimationController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveTaskInternal(Lcom/android/server/wm/RecentsAnimationController;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->removeTaskInternal(I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 107
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .registers 7

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 143
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 144
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 174
    iput v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 219
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    .line 261
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$3;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 470
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 471
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 472
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 473
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 474
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 475
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 477
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    return-void
.end method

.method private synthetic lambda$collectTaskRemoteAnimations$4(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/Task;)V
    .registers 8

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p4, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 825
    :cond_8
    iget v0, p4, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    .line 829
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 830
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/wm/RecentsAnimationController;->addOpeningSplitTaskAnimation(Lcom/android/server/wm/Task;ZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object p2

    goto :goto_26

    .line 834
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p0, p4, p2, v1, p3}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object p2

    .line 837
    :goto_26
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {p3, v0}, Landroid/util/IntArray;->add(I)V

    .line 839
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 841
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz p0, :cond_4d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p2, 0x449bfa48

    new-array p3, v1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const-string p0, "collectTaskRemoteAnimations, target: %s"

    invoke-static {p1, p2, p4, p0, p3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method private synthetic lambda$createWallpaperAnimations$6(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 3

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 898
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 899
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$initialize$0(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 3

    .line 499
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static synthetic lambda$initialize$1(ILcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 513
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/WindowState;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static synthetic lambda$initialize$2(Lcom/android/server/wm/Task;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4

    .line 512
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/AnimationAdapter;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private synthetic lambda$logRecentsAnimationStartTime$5(I)V
    .registers 3

    .line 850
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-nez v0, :cond_d

    .line 851
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    :cond_d
    return-void
.end method

.method public static synthetic lambda$startAnimation$3(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;
    .registers 1

    .line 660
    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object p0

    return-object p0
.end method

.method public addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 577
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x120f4c9b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "addAnimation(%s)"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :cond_1c
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 580
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    const/16 v9, 0x8

    move-object v5, p1

    move-object v7, v0

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 582
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 583
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addOpeningSplitTaskAnimation(Lcom/android/server/wm/Task;ZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .registers 15

    .line 595
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x120f4c9b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "addAnimation(%s)"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_1c
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 598
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v10, p3

    .line 599
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 601
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 602
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 603
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    .line 790
    :goto_a
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-nez p1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    .line 791
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_14
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->skipAnimation(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_27

    .line 797
    :cond_23
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->collectTaskRemoteAnimations(Lcom/android/server/wm/Task;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    nop

    :cond_27
    :goto_27
    return-void
.end method

.method public animateNavigationBarForAppLaunch(J)V
    .registers 5

    .line 774
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 776
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_15

    goto :goto_26

    .line 782
    :cond_15
    new-instance v0, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    .line 784
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 785
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 784
    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeOutAndInSequentially(JLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final attachNavigationBarToApp()V
    .registers 7

    .line 686
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 688
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_e

    goto/16 :goto_af

    .line 691
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_16
    if-ltz v0, :cond_33

    .line 692
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 693
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 694
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_2d

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 697
    :cond_2d
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 701
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getNavigationBarWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 702
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_af

    if-eqz v0, :cond_af

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v2, :cond_42

    goto :goto_af

    .line 705
    :cond_42
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 706
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 707
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 708
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 709
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 711
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 712
    invoke-virtual {v4}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 713
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getLastSurfacePosition()Landroid/graphics/Point;

    move-result-object v4

    .line 714
    iget v5, v4, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationX(I)V

    .line 715
    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 718
    :cond_7f
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 719
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 723
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a5

    :cond_9f
    const v0, 0x7fffffff

    .line 726
    invoke-virtual {v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 728
    :goto_a5
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_af

    .line 729
    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    :cond_af
    :goto_af
    return-void
.end method

.method public binderDied()V
    .registers 3

    const-string v0, "binderDied"

    const/4 v1, 0x2

    .line 1164
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1168
    :try_start_d
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    const-string/jumbo v1, "recents_animation_input_consumer"

    .line 1169
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 1170
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public cancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 912
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    return-void
.end method

.method public final cancelAnimation(IZLjava/lang/String;)V
    .registers 10
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 949
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5af48e1b

    const-string v4, "cancelAnimation(): reason=%s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_18
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 951
    :try_start_1f
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_25

    .line 953
    monitor-exit p3

    return-void

    .line 955
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 956
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz p2, :cond_81

    .line 958
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_81

    .line 959
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTasks()Landroid/util/ArrayMap;

    move-result-object p2

    .line 960
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 962
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_97

    if-nez v0, :cond_81

    .line 964
    :try_start_46
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 965
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/window/TaskSnapshot;

    .line 966
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_57
    if-ltz v2, :cond_6e

    .line 967
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    aput v1, p1, v2

    .line 968
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshot;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 970
    :cond_6e
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {p2, p1, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_73} :catch_74
    .catchall {:try_start_46 .. :try_end_73} :catchall_97

    goto :goto_7c

    :catch_74
    move-exception p1

    .line 972
    :try_start_75
    sget-object p2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v0, "Failed to cancel recents animation"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    :goto_7c
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 976
    monitor-exit p3
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_97

    return-void

    .line 985
    :cond_81
    :try_start_81
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    const/4 v0, 0x0

    invoke-interface {p2, v0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_88
    .catchall {:try_start_81 .. :try_end_87} :catchall_97

    goto :goto_90

    :catch_88
    move-exception p2

    .line 987
    :try_start_89
    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cancel recents animation"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    :goto_90
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {p0, p1, v2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 990
    monitor-exit p3

    return-void

    :catchall_97
    move-exception p0

    monitor-exit p3
    :try_end_99
    .catchall {:try_start_89 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public cancelAnimationForDisplayChange()V
    .registers 4

    .line 937
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    const-string v2, "cancelAnimationForDisplayChange"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    return-void
.end method

.method public cancelAnimationForDisplaySwap()V
    .registers 4

    .line 943
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    const/4 v1, 0x0

    const-string v2, "cancelAnimationForDisplaySwap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    return-void
.end method

.method public cancelAnimationForHomeStart()V
    .registers 4

    .line 925
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "cancelAnimationForHomeStart"

    .line 928
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    return-void
.end method

.method public cancelAnimationWithScreenshot(Z)V
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "rootTaskOrderChanged"

    .line 916
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    return-void
.end method

.method public checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .registers 3

    .line 1174
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_25

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1176
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1177
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    if-eqz p1, :cond_25

    .line 1179
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    :cond_25
    return-void
.end method

.method public cleanupAnimation(I)V
    .registers 13
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 1065
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    int-to-long v6, p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x557b5a7e

    const/4 v9, 0x5

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v3

    const-string v4, "cleanupAnimation(): Notify animation finished mPendingAnimations=%d reorderMode=%d"

    invoke-static {v0, v8, v9, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    if-eq p1, v1, :cond_3b

    .line 1069
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1070
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eq v0, v4, :cond_3b

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->notifyRecentsWillBeTop()V

    .line 1075
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_42
    if-ltz v0, :cond_60

    .line 1076
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    if-eq p1, v3, :cond_50

    if-nez p1, :cond_57

    .line 1078
    :cond_50
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 1080
    :cond_57
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 1081
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->onCleanup()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 1084
    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_71
    if-ltz v0, :cond_81

    .line 1088
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 1089
    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentsAnimationController;->removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    :cond_81
    if-eq p1, v3, :cond_8a

    .line 1092
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-eqz v0, :cond_88

    goto :goto_8a

    :cond_88
    move v0, v2

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v0, v3

    :goto_8b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController;->restoreNavigationBarFromApp(Z)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    const/4 v0, 0x0

    .line 1101
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 1102
    iput-boolean v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-ne p1, v1, :cond_b5

    .line 1106
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-nez v0, :cond_b5

    .line 1107
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 1111
    :cond_b5
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    .line 1112
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_cf

    if-eq p1, v3, :cond_c6

    if-nez p1, :cond_cf

    .line 1118
    :cond_c6
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 1122
    :cond_cf
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onFinishRecentsAnimation()V

    if-eq p1, v1, :cond_d9

    goto :goto_da

    :cond_d9
    move v3, v2

    .line 1127
    :goto_da
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/MultiTaskingController;->notifyFinishRecentsAnimation(Z)V

    .line 1133
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_ea

    .line 1134
    invoke-interface {p0, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    :cond_ea
    return-void
.end method

.method public final collectTaskRemoteAnimations(Lcom/android/server/wm/Task;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 6

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 816
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 821
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0, p3}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentsAnimationController;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public continueDeferredCancelAnimation()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    return-void
.end method

.method public final createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 5

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_28

    .line 879
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    const/4 v3, -0x1

    .line 881
    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 883
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 885
    :cond_22
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 888
    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method public final createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 13

    .line 892
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x5923e8a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "createWallpaperAnimations()"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 893
    :cond_10
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingStart="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingAnimations="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanceled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInputConsumerEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetActivityRecord="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTargetOverWallpaper="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequestDeferCancelUntilNextTransition="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCancelOnNextTransitionStart="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCancelDeferredWithScreenshot="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPendingCancelWithScreenshotReorderMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceCancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 904
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-nez v0, :cond_8

    .line 905
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    goto :goto_b

    .line 907
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V

    :goto_b
    return-void
.end method

.method public getBackInvokedInfo()Landroid/window/OnBackInvokedCallbackInfo;
    .registers 3

    .line 1232
    new-instance v0, Landroid/window/OnBackInvokedCallbackInfo;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;I)V

    return-object v0
.end method

.method public getNavigationBarWindow()Lcom/android/server/wm/WindowState;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 682
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getTargetAppDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 1236
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1239
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getTargetAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1225
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1228
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    .line 487
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    .line 498
    new-instance v3, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda6;-><init>()V

    const-class v4, Lcom/android/server/wm/Task;

    .line 499
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 498
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v3

    .line 501
    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 502
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 505
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3d
    if-ltz p1, :cond_5e

    .line 507
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 508
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimationController;->skipAnimation(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_5b

    .line 511
    :cond_4c
    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    xor-int/2addr v4, v1

    new-instance v5, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;

    invoke-direct {v5, v3}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    :goto_5b
    add-int/lit8 p1, p1, -0x1

    goto :goto_3d

    .line 518
    :cond_5e
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_6d

    const-string p1, "initialize-noVisibleTasks"

    .line 519
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void

    .line 524
    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_c0

    .line 530
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->attachNavigationBarToApp()V

    .line 533
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz p1, :cond_8e

    invoke-virtual {p3}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x5a95a778

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string/jumbo p1, "setHomeApp(%s)"

    invoke-static {p2, v0, v2, p1, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_8e
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 536
    invoke-virtual {p3}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 537
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 538
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 541
    :cond_a1
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 543
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V

    .line 547
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/MultiTaskingController;->notifyStartRecentsAnimation(Z)V

    .line 553
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_bf

    .line 554
    invoke-interface {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    :cond_bf
    return-void

    :catch_c0
    const-string p1, "initialize-failedToLinkToDeath"

    .line 526
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public final isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 1261
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_20

    .line 1262
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1244
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isAnimatingWallpaper(Lcom/android/server/wm/WallpaperWindowToken;)Z
    .registers 5

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1253
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-ne p1, v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isNavigationBarAttachedToApp()Z
    .registers 1

    .line 677
    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    return p0
.end method

.method public isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1214
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_8

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isTargetOverWallpaper()Z
    .registers 1

    .line 1218
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1221
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result p0

    return p0
.end method

.method public isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_28

    .line 1185
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_28

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v1, :cond_1b

    .line 1187
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1188
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public linkFixedRotationTransformIfNeeded(Lcom/android/server/wm/WindowToken;)V
    .registers 2

    .line 1281
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_5

    return-void

    .line 1284
    :cond_5
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method public final linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_11

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    .line 1151
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_11
    return-void
.end method

.method public logRecentsAnimationStartTime(I)V
    .registers 4

    .line 849
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RecentsAnimationController;I)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFailsafe()V
    .registers 3

    .line 1144
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    :goto_7
    const-string/jumbo v1, "onFailsafe"

    .line 1143
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 610
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x500facd

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const-string/jumbo v0, "removeAnimation(%d)"

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 612
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->onRemove()V

    .line 613
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTaskInternal(I)Z
    .registers 6

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_39

    .line 862
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 863
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_36

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 864
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3a

    .line 867
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    goto :goto_3a

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    const/4 v1, 0x0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x696a0b14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "removeWallpaperAnimation()"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    .line 620
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v1

    .line 619
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 621
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reparentSplitBackgroundRootFromLeash()V
    .registers 3

    .line 1306
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1308
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_3e

    .line 1312
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 1313
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 1317
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz p0, :cond_36

    if-nez v0, :cond_26

    goto :goto_36

    .line 1321
    :cond_26
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1322
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, -0x1

    .line 1323
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1324
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_3e

    .line 1319
    :cond_36
    :goto_36
    sget-object p0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reparentSplitBackgroundRootFromLeash: failed, no surfaces"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final reparentSplitBackgroundRootToLeash(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

    if-eqz v0, :cond_d

    .line 1291
    sget-object p0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reparentSplitBackgroundRootToLeash: failed, already reparented!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1294
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    if-eqz v0, :cond_3a

    .line 1295
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1296
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1298
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1299
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1300
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitBackgroundShellRoot:Lcom/android/server/wm/ShellRoot;

    :cond_3a
    return-void
.end method

.method public restoreNavigationBarFromApp(Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 735
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 740
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 741
    iget v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 744
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getNavigationBarWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 750
    :cond_19
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationX(I)V

    .line 753
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 755
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v0, :cond_24

    return-void

    .line 759
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 760
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 761
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_46

    .line 764
    new-instance p1, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 766
    invoke-virtual {p1, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    goto :goto_51

    .line 769
    :cond_46
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_51
    return-void
.end method

.method public scheduleFailsafe()V
    .registers 4

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final screenshotRecentTasks()Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1047
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1048
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_36

    .line 1049
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 1050
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x0

    .line 1051
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 1052
    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget v7, v4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v6, v7, v5, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 1055
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {v3, v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->setSnapshotOverlay(Landroid/window/TaskSnapshot;)V

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 1060
    :cond_36
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    return-object v1
.end method

.method public sendTasksAppeared()V
    .registers 3

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 804
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 806
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v0}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    .line 807
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p0

    .line 809
    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to report task appeared"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setCancelOnNextTransitionStart()V
    .registers 2

    const/4 v0, 0x1

    .line 1014
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return-void
.end method

.method public setDeferredCancel(ZZ)V
    .registers 3

    .line 1024
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 1025
    iput-boolean p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    return-void
.end method

.method public setWillFinishToHome(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1001
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    return-void
.end method

.method public shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1198
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 1199
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public shouldDeferCancelUntilNextTransition()Z
    .registers 1

    .line 1033
    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    return p0
.end method

.method public shouldDeferCancelWithScreenshot()Z
    .registers 2

    .line 1042
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1271
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final skipAnimation(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 564
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public startAnimation()V
    .registers 11

    .line 625
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    iget-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x10e05f4

    const/16 v7, 0xf

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v2

    const-string/jumbo v0, "startAnimation(): mPendingStart=%b mCanceled=%b"

    invoke-static {v5, v6, v7, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_cc

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_30

    goto/16 :goto_cc

    .line 633
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    .line 636
    array-length v0, v6

    if-nez v0, :cond_3e

    const-string/jumbo v0, "startAnimation-noAppWindows"

    .line 637
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void

    .line 642
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    .line 644
    iput-boolean v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 647
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 650
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 651
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_6c

    .line 655
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    :goto_6c
    move-object v8, v0

    .line 658
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 660
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x47fceb0f

    const-string/jumbo v5, "startAnimation(): Notify animation start: %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a3} :catch_a4

    goto :goto_ac

    :catch_a4
    move-exception v0

    .line 665
    sget-object v1, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents animation"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_cc

    .line 669
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 670
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    .line 672
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public final unlinkToDeathOfRunner()V
    .registers 3

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_10

    .line 1157
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_10
    return-void
.end method

.method public updateInputConsumerForApp(Landroid/view/InputWindowHandle;)Z
    .registers 4

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1206
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 1207
    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
