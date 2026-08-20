.class public Lcom/android/server/wm/DragState$AnimationListener;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 2

    .line 1453
    iput-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AnimationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1491
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 1494
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    const-string/jumbo v0, "scale"

    .line 1457
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1458
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 1460
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_22

    const-string p0, "WindowManager"

    const-string p1, "mSurfaceControl is null, animation cannot be updated."

    .line 1461
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_77

    if-eqz v1, :cond_21

    .line 1477
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_21
    return-void

    :cond_22
    :try_start_22
    const-string/jumbo v3, "x"

    .line 1467
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string/jumbo v4, "y"

    .line 1468
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1465
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1469
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "alpha"

    .line 1471
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1469
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1472
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1474
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1475
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v2, v1

    .line 1472
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1476
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_73
    .catchall {:try_start_22 .. :try_end_73} :catchall_77

    .line 1477
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_77
    move-exception p0

    if-eqz v1, :cond_82

    .line 1457
    :try_start_7a
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    throw p0
.end method
