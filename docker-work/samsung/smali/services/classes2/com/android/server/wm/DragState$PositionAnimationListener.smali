.class public Lcom/android/server/wm/DragState$PositionAnimationListener;
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
    name = "PositionAnimationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;)V
    .registers 2

    .line 1323
    iput-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$PositionAnimationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState$PositionAnimationListener;-><init>(Lcom/android/server/wm/DragState;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1369
    iget-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DragState;->endAnimator(I)V

    .line 1370
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz p1, :cond_10

    .line 1371
    iget-object p0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$fputmNeedAdjustPosition(Lcom/android/server/wm/DragState;Z)V

    :cond_10
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
    .registers 12

    .line 1327
    iget-object v0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1328
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    :try_start_c
    const-string/jumbo v1, "x"

    .line 1329
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string/jumbo v2, "y"

    .line 1330
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1332
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_SEAMLESS_ANIMATION:Z

    if-eqz v2, :cond_a8

    iget-object v2, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-static {v2}, Lcom/android/server/wm/DragState;->-$$Nest$fgetmNeedAdjustPosition(Lcom/android/server/wm/DragState;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1333
    iget-object v2, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v2, Lcom/android/server/wm/DragState;->mTargetX:F

    const/4 v4, 0x0

    .line 1334
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetY:F

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v5

    .line 1333
    invoke-static {v2, v1, p1, v3, v5}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result p1

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v2, v1, Lcom/android/server/wm/DragState;->mSourceX:F

    .line 1336
    invoke-static {v1, v2, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-static {v3, v5, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 1337
    invoke-static {v5, v6, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v8, v6, Lcom/android/server/wm/DragState;->mTargetY:F

    invoke-static {v6, v8, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v6

    .line 1335
    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_73

    div-float v2, p1, v1

    .line 1339
    :cond_73
    iget-object p1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v1, p1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 1340
    invoke-static {p1, v1, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result p1

    .line 1341
    iget-object v1, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v5, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v6, v1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1342
    invoke-static {v1, v3, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v1

    .line 1343
    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceX:F

    .line 1344
    invoke-static {v3, v5, v4}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    sub-float/2addr v3, p1

    mul-float/2addr v3, v2

    add-float/2addr p1, v3

    .line 1345
    iget-object v3, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v4, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    .line 1346
    invoke-static {v3, v4, v7}, Lcom/android/server/wm/DragState;->-$$Nest$madjustPosition(Lcom/android/server/wm/DragState;FI)F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    move v9, v1

    move v1, p1

    move p1, v9

    .line 1349
    :cond_a8
    iget-object p0, p0, Lcom/android/server/wm/DragState$PositionAnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_bb

    const-string p0, "WindowManager"

    const-string p1, "mSurfaceControl is null, animation cannot be updated."

    .line 1350
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_c .. :try_end_b5} :catchall_c5

    if-eqz v0, :cond_ba

    .line 1355
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_ba
    return-void

    .line 1353
    :cond_bb
    :try_start_bb
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1354
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_c5

    .line 1355
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_c5
    move-exception p0

    if-eqz v0, :cond_d0

    .line 1327
    :try_start_c8
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw p0
.end method
