.class public Lcom/android/server/wm/DragState$ScaleAnimationListener;
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
    name = "ScaleAnimationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 2

    .line 1376
    iput-object p1, p0, Lcom/android/server/wm/DragState$ScaleAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$ScaleAnimationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$ScaleAnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1405
    iget-object p0, p0, Lcom/android/server/wm/DragState$ScaleAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->endAnimator(I)V

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

    .line 1380
    iget-object v1, p0, Lcom/android/server/wm/DragState$ScaleAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1381
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 1382
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/DragState$ScaleAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_22

    const-string p0, "WindowManager"

    const-string p1, "mSurfaceControl is null, animation cannot be updated."

    .line 1383
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_43

    if-eqz v1, :cond_21

    .line 1391
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_21
    return-void

    .line 1388
    :cond_22
    :try_start_22
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1389
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v2, v1

    .line 1386
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1390
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_43

    .line 1391
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_43
    move-exception p0

    if-eqz v1, :cond_4e

    .line 1380
    :try_start_46
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw p0
.end method
