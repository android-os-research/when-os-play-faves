.class public Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;,
        Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;,
        Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    }
.end annotation


# instance fields
.field public final mAnimationHandler:Landroid/animation/AnimationHandler;

.field public mAnimationStartDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mAnimationThreadHandler:Landroid/os/Handler;

.field public final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field public mApplyScheduled:Z

.field public final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field public final mCancelLock:Ljava/lang/Object;

.field public mChoreographer:Landroid/view/Choreographer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mEdgeExtensionLock:Ljava/lang/Object;

.field public final mEdgeExtensions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEdgeExtensionLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingAnimationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mPreProcessingAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceAnimationHandler:Landroid/os/Handler;

.field public mWmGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;


# direct methods
.method public static synthetic $r8$lambda$19YRU33xjdT2luWZq-yTqfL5WWQ(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8BiFaxyZI4fLPiCLISxqvwS2SH0(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static synthetic $r8$lambda$idKnCZrKEHhwMAiiK1bHQFIMX1U(Lcom/android/server/wm/SurfaceAnimationRunner;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$startAnimation$2(Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lQHTSXdTUCZJaFyAhEbeX6jsg1g(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/ValueAnimator;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$new$1()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$loPPzJ8fD_RdE666BYWEQiTKPGA(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$startAnimationLocked$4(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1Jh9N5fY2HKNOPRKT57txOp8-s(Lcom/android/server/wm/SurfaceAnimationRunner;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zf6gMVYa4kZcjL0uos_OXS41EEA(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$onAnimationCancelled$3(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimationThreadHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrameTransaction(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x2

    .line 105
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 107
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    .line 120
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 128
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 153
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 155
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 156
    new-instance p3, Landroid/animation/AnimationHandler;

    invoke-direct {p3}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p1, :cond_6b

    goto :goto_72

    .line 159
    :cond_6b
    new-instance p1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {p1, v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 157
    :goto_72
    invoke-virtual {p3, p1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    if-eqz p2, :cond_78

    goto :goto_7d

    .line 162
    :cond_78
    new-instance p2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_7d
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 163
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Landroid/os/PowerManagerInternal;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/os/PowerManagerInternal;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 153
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private synthetic lambda$new$1()Landroid/animation/ValueAnimator;
    .registers 2

    .line 162
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method private synthetic lambda$onAnimationCancelled$3(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 2

    .line 326
    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method private synthetic lambda$startAnimation$2(Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 8

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mWmGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    :goto_7
    monitor-enter v0

    .line 232
    :try_start_8
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_26

    const-string p0, "WindowManager"

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create edge extension layer, invalid layer="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-exit v0

    return-void

    .line 239
    :cond_26
    invoke-interface {p2}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object p2

    .line 241
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 243
    invoke-virtual {p2}, Lcom/android/server/wm/WindowAnimationSpec;->getRootTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowAnimationSpec;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    .line 242
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->edgeExtendWindow(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 246
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_7c

    .line 248
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_76

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_79

    .line 254
    :try_start_48
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 255
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 257
    :cond_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_73

    .line 259
    :try_start_54
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p0, p3}, Lcom/android/server/wm/SurfaceAnimationRunner;->addAnimationToList(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 267
    iget-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez p1, :cond_76

    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 268
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance p3, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {p1, p3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_79

    goto :goto_76

    :catchall_73
    move-exception p0

    .line 257
    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw p0

    .line 271
    :cond_76
    :goto_76
    monitor-exit p2
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_79

    .line 272
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_7c

    return-void

    :catchall_79
    move-exception p0

    .line 271
    :try_start_7a
    monitor-exit p2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw p0

    :catchall_7c
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method private synthetic lambda$startAnimationLocked$4(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 358
    iget-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter p3

    .line 359
    :try_start_3
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 360
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 361
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_16

    goto :goto_17

    :cond_16
    move-wide v0, v2

    .line 365
    :goto_17
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 367
    :cond_1c
    monitor-exit p3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction()V

    return-void

    :catchall_21
    move-exception p0

    .line 367
    :try_start_22
    monitor-exit p3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method


# virtual methods
.method public final addAnimationToList(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 4

    .line 704
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->getAnimationByLeash(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 706
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 708
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyTransaction()V
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    return-void
.end method

.method public final applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    .line 414
    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p0, p2, p1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    return-void
.end method

.method public continueStartingAnimations()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 194
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 198
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 206
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final convertToColor(Ljava/lang/String;)I
    .registers 3

    .line 607
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_4e

    goto :goto_37

    :sswitch_c
    const-string p0, "Top Edge Extension"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    :cond_15
    const/4 v0, 0x3

    goto :goto_37

    :sswitch_17
    const-string p0, "Bottom Edge Extension"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_37

    :cond_20
    const/4 v0, 0x2

    goto :goto_37

    :sswitch_22
    const-string p0, "Left Edge Extension"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v0, 0x1

    goto :goto_37

    :sswitch_2d
    const-string p0, "Right Edge Extension"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    packed-switch v0, :pswitch_data_60

    const p0, -0xff01

    return p0

    :pswitch_3e
    const p0, -0xff0100

    return p0

    :pswitch_42
    const p0, -0xff0001

    return p0

    :pswitch_46
    const/high16 p0, -0x10000

    return p0

    :pswitch_49
    const p0, -0xffff01

    return p0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x6745efc0 -> :sswitch_2d
        -0xfe12d4b -> :sswitch_22
        -0xf1eabef -> :sswitch_17
        0x238b1fe7 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_49
        :pswitch_46
        :pswitch_42
        :pswitch_3e
    .end packed-switch
.end method

.method public final createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    const-wide/16 v0, 0x20

    const-string v2, "createExtensionSurface"

    .line 508
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/SurfaceAnimationRunner;->doCreateExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public deferStartingAnimations()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 183
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 184
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final doCreateExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 15

    .line 522
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 523
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 v1, 0x1

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 526
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 529
    invoke-virtual {v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v0

    .line 541
    invoke-static {v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string p0, "SurfaceAnimationRunner"

    const-string p1, "Failed to create edge extension - edge buffer is null"

    .line 547
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_3c
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 553
    invoke-virtual {v2, p6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 554
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "DefaultTransitionHandler#startAnimation"

    .line 555
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 556
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 557
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 558
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 560
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 563
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_EDGE_EXTENSION_ANIM_DEBUG:Z

    if-eqz v4, :cond_bf

    .line 564
    invoke-virtual {p0, p6}, Lcom/android/server/wm/SurfaceAnimationRunner;->convertToColor(Ljava/lang/String;)I

    move-result v0

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "_ColorNode"

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const/4 v4, 0x0

    invoke-static {p6, v4}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object p6

    .line 567
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p6, v6, v6, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 568
    invoke-virtual {p6, v6}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 569
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p6, v4, v5}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v4

    .line 570
    invoke-virtual {v4, v0}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 571
    invoke-virtual {p6, v4}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 573
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 574
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 573
    invoke-static {p6, v0, v4}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 575
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 576
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p6

    .line 575
    invoke-virtual {v3, v0, p6}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    goto :goto_ca

    .line 579
    :cond_bf
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p6

    .line 580
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 579
    invoke-virtual {v3, p6, v0}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 582
    :goto_ca
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 584
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/SurfaceAnimationRunner;->getScaleXForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p6

    .line 585
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/SurfaceAnimationRunner;->getScaleYForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 587
    iget-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter p3

    .line 588
    :try_start_d8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 591
    invoke-virtual {p7, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 592
    monitor-exit p3

    return-void

    .line 595
    :cond_e5
    invoke-virtual {p7, v2, p6, p2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 596
    invoke-virtual {p7, v2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 p2, -0x80000000

    .line 597
    invoke-virtual {p7, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    int-to-float p2, p4

    int-to-float p4, p5

    .line 598
    invoke-virtual {p7, v2, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 599
    invoke-virtual {p7, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 601
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    monitor-exit p3

    return-void

    :catchall_105
    move-exception p0

    monitor-exit p3
    :try_end_107
    .catchall {:try_start_d8 .. :try_end_107} :catchall_105

    throw p0
.end method

.method public final edgeExtendWindow(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V
    .registers 20

    move-object/from16 v0, p3

    .line 449
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    const/4 v2, 0x0

    .line 450
    invoke-virtual {v0, v2, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 451
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 452
    invoke-virtual {v0, v3, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 457
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 456
    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 462
    iget v2, v0, Landroid/graphics/Insets;->left:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_49

    .line 463
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 464
    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 466
    iget v11, v0, Landroid/graphics/Insets;->left:I

    const/4 v12, 0x0

    const-string v13, "Left Edge Extension"

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v14, p4

    .line 468
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 472
    :cond_49
    iget v2, v0, Landroid/graphics/Insets;->top:I

    if-gez v2, :cond_67

    .line 473
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 474
    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 477
    iget v12, v0, Landroid/graphics/Insets;->top:I

    const/4 v11, 0x0

    const-string v13, "Top Edge Extension"

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v14, p4

    .line 478
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 482
    :cond_67
    iget v2, v0, Landroid/graphics/Insets;->right:I

    if-gez v2, :cond_86

    .line 483
    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x1

    invoke-direct {v9, v2, v4, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    new-instance v10, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    neg-int v2, v2

    invoke-direct {v10, v4, v4, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x0

    const-string v13, "Right Edge Extension"

    move-object v7, p0

    move-object/from16 v8, p1

    move v11, v1

    move-object/from16 v14, p4

    .line 489
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    .line 493
    :cond_86
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-gez v2, :cond_a7

    .line 494
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v2, v6, -0x1

    invoke-direct {v3, v4, v2, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 496
    new-instance v5, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    neg-int v2, v2

    invoke-direct {v5, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    iget v0, v0, Landroid/graphics/Insets;->left:I

    const-string v7, "Bottom Edge Extension"

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v4, v5

    move v5, v0

    move-object/from16 v8, p4

    .line 500
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/SurfaceAnimationRunner;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;)V

    :cond_a7
    return-void
.end method

.method public final getAnimationByLeash(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .registers 4

    .line 712
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 713
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScaleXForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 4

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p0, v0, :cond_d

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 627
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    .line 629
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 632
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected edgeBounds and extensionRect widths"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getScaleYForExtensionSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 4

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne p0, v0, :cond_d

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 640
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1a

    .line 642
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 645
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected edgeBounds and extensionRect heights"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->getAnimationByLeash(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v0

    return-void

    .line 315
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    if-eqz v1, :cond_44

    .line 321
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_46

    const/4 v2, 0x1

    .line 323
    :try_start_32
    invoke-static {v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fputmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)V

    .line 324
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_41

    .line 325
    :try_start_36
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mSurfaceAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_46

    goto :goto_44

    :catchall_41
    move-exception p0

    .line 324
    :try_start_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0

    .line 330
    :cond_44
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 670
    monitor-exit v0

    return-void

    .line 673
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 674
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 675
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 676
    invoke-virtual {p2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 678
    :cond_28
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final requiresEdgeExtension(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;)Z
    .registers 2

    .line 296
    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimationSpec;->hasExtension()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final scheduleApplyTransaction()V
    .registers 5

    .line 433
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_10

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    :cond_10
    return-void
.end method

.method public setWmGlobalLock(Lcom/android/server/wm/WindowManagerGlobalLock;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mWmGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 10

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->requiresEdgeExtension(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_51

    .line 219
    :try_start_16
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2c

    .line 222
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Landroid/view/SurfaceControl;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_51

    goto :goto_2f

    :catchall_2c
    move-exception p0

    .line 220
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw p0

    :cond_2f
    :goto_2f
    if-nez p4, :cond_4f

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->addAnimationToList(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 284
    iget-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 285
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance p2, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4a
    const-wide/16 p1, 0x0

    .line 290
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 292
    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 355
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 356
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 373
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    iput-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 403
    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 405
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 410
    :cond_45
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    return-void
.end method

.method public final startAnimations(J)V
    .registers 3

    .line 418
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 419
    :try_start_3
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPreProcessingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 425
    monitor-exit p1

    return-void

    .line 427
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked()V

    .line 428
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    .line 429
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    return-void

    :catchall_18
    move-exception p0

    .line 428
    :try_start_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final startPendingAnimationsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 338
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
