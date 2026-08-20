.class public Lcom/android/server/wm/DragState$AlphaAnimationListener;
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
    name = "AlphaAnimationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 2

    .line 1409
    iput-object p1, p0, Lcom/android/server/wm/DragState$AlphaAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$AlphaAnimationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$AlphaAnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1437
    iget-object p0, p0, Lcom/android/server/wm/DragState$AlphaAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

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
    .registers 4

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/DragState$AlphaAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1414
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1415
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/DragState$AlphaAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_1f

    const-string p0, "WindowManager"

    const-string p1, "mSurfaceControl is null, animation cannot be updated."

    .line 1416
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_35

    if-eqz v0, :cond_1e

    .line 1423
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_1e
    return-void

    :cond_1f
    :try_start_1f
    const-string v1, "alpha"

    .line 1421
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1419
    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1422
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_35

    .line 1423
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_35
    move-exception p0

    if-eqz v0, :cond_40

    .line 1413
    :try_start_38
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw p0
.end method
