.class public Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3

    .line 373
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 388
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_34

    .line 390
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmAnimationThreadHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_31

    .line 396
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    return-void

    :catchall_31
    move-exception p0

    .line 395
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0

    :catchall_34
    move-exception p0

    .line 396
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 376
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmCancelLock(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 377
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->-$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmFrameTransaction(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 382
    :cond_1e
    monitor-exit p1

    return-void

    :catchall_20
    move-exception p0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method
