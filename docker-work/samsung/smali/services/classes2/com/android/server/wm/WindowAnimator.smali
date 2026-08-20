.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mAnimationFrameCallbackScheduled:Z

.field public mBulkUpdateParams:I

.field public mChoreographer:Landroid/view/Choreographer;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTime:J

.field public mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public mInExecuteAfterPrepareSurfacesRunnables:Z

.field public mInitialized:Z

.field public mLastRootAnimating:Z

.field public mLastWindowFreezeSource:Ljava/lang/Object;

.field public mNotifyWhenNoAnimation:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mRemoveReplacedWindows:Z

.field public mRunningExpensiveAnimations:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$fo2Nk5bb9hY3lvmHsTnTEwtZMbI(Lcom/android/server/wm/WindowAnimator;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->lambda$new$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxZcME0qhgEm-qcGypG2VPv5aek(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 69
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 70
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 98
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 102
    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const-string v1, " UPDATE_ROTATION"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_19

    const-string p0, " SET_WALLPAPER_ACTION_PENDING"

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 100
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private synthetic lambda$new$1(J)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    .line 106
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/wm/WindowAnimator;->animate(JJ)V

    .line 107
    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez p1, :cond_23

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    if-eqz v0, :cond_8

    .line 326
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    return-void
.end method

.method public addDisplayLocked(I)V
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    return-void
.end method

.method public final animate(JJ)V
    .registers 13

    .line 129
    iget-boolean p3, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez p3, :cond_5

    return-void

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 136
    iget-object p3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide/32 v0, 0xf4240

    .line 137
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 p2, 0x1

    .line 139
    iput-boolean p2, p3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 140
    sget-boolean p4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const-string v0, "WindowManager"

    if-eqz p4, :cond_34

    .line 141
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!! animate: entry time="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_34
    sget-boolean p4, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz p4, :cond_41

    sget-object p4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x764d6265

    invoke-static {p4, v2, p1, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_41
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 148
    :try_start_46
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 150
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 152
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, p1

    :goto_54
    if-ge v3, v2, :cond_69

    .line 154
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 155
    invoke-virtual {p3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 159
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_69
    move v3, p1

    :goto_6a
    if-ge v3, v2, :cond_87

    .line 163
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 164
    invoke-virtual {p3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 167
    invoke-virtual {p4}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 168
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, v4, v5}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeeded(ILandroid/view/SurfaceControl$Transaction;)V

    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 173
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    .line 175
    iget-object p4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz p4, :cond_9a

    .line 176
    invoke-virtual {p4}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    move-exception p4

    const-string v2, "Unhandled exception in Window Manager"

    .line 180
    invoke-static {v0, v2, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :cond_9a
    :goto_9a
    invoke-virtual {p3, p0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result p4

    .line 184
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-nez v2, :cond_a6

    iget-boolean v2, p3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_ae

    .line 185
    :cond_a6
    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->copyAnimToLayoutParams()Z

    move-result v2

    if-eqz v2, :cond_ae

    move v2, p2

    goto :goto_af

    :cond_ae
    move v2, p1

    :goto_af
    if-nez p4, :cond_b3

    if-eqz v2, :cond_ba

    .line 187
    :cond_b3
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_ba
    const/4 v2, -0x1

    const/4 v3, 0x5

    .line 190
    invoke-virtual {p3, v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v2

    const-string v4, "animating"

    const-wide/16 v5, 0x20

    if-eqz v2, :cond_cd

    .line 192
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v7, :cond_cd

    .line 193
    invoke-static {v5, v6, v4, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_cd
    if-nez v2, :cond_dd

    .line 195
    iget-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v7, :cond_dd

    .line 196
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 197
    invoke-static {v5, v6, v4, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 199
    :cond_dd
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    const/16 v2, 0xb

    .line 202
    invoke-virtual {p3, v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 205
    iget-boolean v3, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    if-nez v3, :cond_f8

    .line 208
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 209
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    goto :goto_10a

    :cond_f8
    if-nez v2, :cond_10a

    .line 210
    iget-boolean p2, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    if-eqz p2, :cond_10a

    .line 211
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 212
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    .line 214
    :cond_10a
    :goto_10a
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRunningExpensiveAnimations:Z

    .line 216
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 217
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "WindowAnimator"

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 218
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz p2, :cond_124

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x207ef40f

    invoke-static {p2, v2, p1, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_124
    iget-boolean p2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    if-eqz p2, :cond_12d

    .line 221
    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->removeReplacedWindows()V

    .line 222
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 225
    :cond_12d
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 228
    sget-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz p1, :cond_15f

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "!!! animate: exit mBulkUpdateParams="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " hasPendingLayoutChanges="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    return-void
.end method

.method public final cancelAnimation()V
    .registers 2

    .line 301
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 249
    :goto_12
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "DisplayContentsAnimator #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    .line 252
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 254
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 255
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 259
    :cond_47
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_5d

    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCurrentTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget-wide v0, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_5d
    iget p3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz p3, :cond_7b

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mBulkUpdateParams=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget p2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget p0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {p0}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    return-void
.end method

.method public executeAfterPrepareSurfacesRunnables()V
    .registers 5

    .line 337
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_20

    .line 345
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 347
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    return-void
.end method

.method public getChoreographer()Landroid/view/Choreographer;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public final getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 5

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return-object v0

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v1, :cond_22

    .line 282
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 283
    new-instance v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator-IA;)V

    .line 284
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_22
    return-object v1
.end method

.method public isAnimationScheduled()Z
    .registers 1

    .line 311
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    return p0
.end method

.method public ready()V
    .registers 2

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    return-void
.end method

.method public removeDisplayLocked(I)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .registers 2

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    return-void
.end method

.method public scheduleAnimation()V
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method
