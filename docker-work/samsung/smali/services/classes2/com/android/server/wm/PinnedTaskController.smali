.class public Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
    }
.end annotation


# static fields
.field public static final DEFER_ORIENTATION_CHANGE_TIMEOUT_MS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mDeferOrientationChanging:Z

.field public final mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

.field public mDestRotatedBounds:Landroid/graphics/Rect;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreezingTaskConfig:Z

.field public mImeHeight:I

.field public mIsImeShowing:Z

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field public final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field public mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$B9kbo5A9bax0DLJI2IXSMTgkAtM(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController;->lambda$deferOrientationChangeForEnteringPipFromFullScreenIfNeeded$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zkBBH31qmAMd5VI2EmwQ8cjLh-w(Lcom/android/server/wm/PinnedTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferOrientationTimeoutRunnable(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 118
    new-instance p1, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    return-void
.end method

.method private synthetic lambda$deferOrientationChangeForEnteringPipFromFullScreenIfNeeded$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PinnedTaskController;->useOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 120
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v1, :cond_16

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 124
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public final continueOrientationChange()V
    .registers 3

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 240
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 241
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_1f
    return-void
.end method

.method public deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 185
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_49

    .line 188
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    return-void

    .line 196
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    :goto_49
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDeferOrientationChanging=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFreezingTaskConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_61

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPendingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    :cond_61
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_7e

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPipTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mMaxAspectRatio="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isValidExpandedPictureInPictureAspectRatio(F)Z
    .registers 3

    .line 172
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_13

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 173
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_11

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

.method public isValidPictureInPictureAspectRatio(F)Z
    .registers 3

    .line 164
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    iget p0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 165
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final notifyImeVisibilityChanged(ZI)V
    .registers 3

    .line 374
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-eqz p0, :cond_10

    .line 376
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/view/IPinnedTaskListener;->onImeVisibilityChanged(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "WindowManager"

    const-string p2, "Error delivering bounds changed event."

    .line 378
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_10
    return-void
.end method

.method public final notifyMovementBoundsChanged(Z)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 388
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez p0, :cond_11

    .line 389
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 392
    :cond_11
    :try_start_11
    invoke-interface {p0, p1}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    goto :goto_1d

    :catch_15
    move-exception p0

    :try_start_16
    const-string p1, "WindowManager"

    const-string v1, "Error delivering actions changed event."

    .line 394
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onActivityHidden(Landroid/content/ComponentName;)V
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez p0, :cond_5

    return-void

    .line 344
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/view/IPinnedTaskListener;->onActivityHidden(Landroid/content/ComponentName;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "WindowManager"

    const-string v0, "Error delivering reset reentry fraction event."

    .line 346
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public onCancelFixedRotationTransform()V
    .registers 2

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 332
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 334
    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method public onPostDisplayConfigurationChanged()V
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method public registerPinnedTaskListener(Landroid/view/IPinnedTaskListener;)V
    .registers 5

    .line 151
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 152
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    .line 153
    iget-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string p1, "WindowManager"

    const-string v0, "Failed to register pinned task listener"

    .line 156
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public final reloadResources()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c8

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    const v1, 0x10500c7

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    return-void
.end method

.method public setAdjustedForIme(ZI)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-lez p2, :cond_8

    move p1, v0

    goto :goto_9

    :cond_8
    move p1, v1

    :goto_9
    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move p2, v1

    .line 360
    :goto_d
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    if-ne p1, v1, :cond_16

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    if-ne p2, v1, :cond_16

    return-void

    .line 364
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    .line 365
    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    return-void
.end method

.method public setEnterPipBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 214
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 219
    iget-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    :cond_1c
    return-void
.end method

.method public setEnterPipTransaction(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 3

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 232
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method public shouldDeferOrientationChange()Z
    .registers 1

    .line 206
    iget-boolean p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    return p0
.end method

.method public startSeamlessRotationIfNeeded(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 13

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 253
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v1, :cond_d

    .line 254
    iget-object v2, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-nez v0, :cond_13

    if-eqz v2, :cond_13

    return-void

    .line 258
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_20

    return-void

    :cond_20
    const/4 v5, 0x0

    .line 264
    iput-object v5, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 265
    iput-object v5, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 266
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/16 v3, 0x9

    const-string v6, "WindowManager"

    if-nez v2, :cond_a0

    .line 270
    iget-object p2, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->x:F

    .line 271
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 272
    invoke-virtual {v1}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 273
    iget v2, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v7, v2, v5

    const/high16 v8, -0x3d4c0000    # -90.0f

    if-nez v7, :cond_52

    .line 274
    iget-object p2, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->y:F

    .line 275
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float p2, p0, p2

    .line 276
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_64

    :cond_52
    cmpl-float v2, v2, v8

    if-nez v2, :cond_64

    .line 278
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget-object p2, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget p3, p2, Landroid/graphics/PointF;->y:F

    sub-float p3, p0, p3

    .line 279
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 280
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 282
    :cond_64
    :goto_64
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 283
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    new-array v2, v3, [F

    .line 284
    invoke-virtual {p1, p0, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 285
    invoke-virtual {v1}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 286
    iget v0, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 288
    :cond_7b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Seamless rotation PiP tx="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " pos="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_a0
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 293
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 294
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v5

    .line 296
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seamless rotation PiP bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hintRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    if-eqz v5, :cond_f6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f6

    .line 300
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_f6

    .line 301
    invoke-static {p3, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p2

    .line 303
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p3

    .line 302
    invoke-static {p3, p2}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p2

    .line 303
    invoke-virtual {p2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 304
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_f6
    if-eqz v5, :cond_ff

    .line 307
    invoke-virtual {p0, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_ff

    goto :goto_100

    :cond_ff
    move-object v5, p0

    .line 309
    :goto_100
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 310
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-gt p2, p3, :cond_112

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    goto :goto_11a

    :cond_112
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 312
    :goto_11a
    iget p2, v5, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 313
    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    mul-float/2addr p0, p3

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 314
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 316
    iget p3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p0

    int-to-float p0, p3

    invoke-virtual {v1, p2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 317
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    new-array p2, v3, [F

    invoke-virtual {p1, p0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final useOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, -0x1

    if-eq p0, v0, :cond_18

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
