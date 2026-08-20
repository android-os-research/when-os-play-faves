.class public final Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;
.super Lcom/android/server/wm/animation/rebound/SimpleSpringListener;
.source "TaskMotionAnimator.java"

# interfaces
.implements Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskMotionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StashAnimation"
.end annotation


# static fields
.field public static final MIN_VALUE_THRESHOLD:F = 1.5f


# instance fields
.field public final mAnimatedBounds:Landroid/graphics/RectF;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mHandlerAnim:Z

.field public mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/server/wm/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZ)V
    .registers 14

    .line 525
    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/SimpleSpringListener;-><init>()V

    .line 515
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mStableBounds:Landroid/graphics/Rect;

    .line 516
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 517
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 518
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 526
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 527
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual {v3, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 529
    invoke-virtual {v2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 531
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->createSpring()Lcom/android/server/wm/animation/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    .line 532
    new-instance p2, Lcom/android/server/wm/animation/rebound/SpringConfig;

    float-to-double v3, p6

    .line 533
    invoke-static {v3, v4}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v3

    float-to-double p6, p7

    .line 534
    invoke-static {p6, p7}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p6

    invoke-direct {p2, v3, v4, p6, p7}, Lcom/android/server/wm/animation/rebound/SpringConfig;-><init>(DD)V

    .line 532
    invoke-virtual {p1, p2}, Lcom/android/server/wm/animation/rebound/Spring;->setSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 535
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-double p6, p2

    invoke-virtual {p1, p6, p7}, Lcom/android/server/wm/animation/rebound/Spring;->setCurrentValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 536
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    float-to-double p4, p5

    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/animation/rebound/Spring;->setVelocity(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 537
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/animation/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 538
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/animation/rebound/Spring;->addListener(Lcom/android/server/wm/animation/rebound/SpringListener;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 539
    iput-boolean p8, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mHandlerAnim:Z

    .line 540
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_87

    .line 541
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StashAnimation: startBounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " endBounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskMotionAnimator"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .registers 6

    .line 558
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "TaskMotionAnimator"

    const-string v1, "StashAnimation[cancel]"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 564
    :try_start_12
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-nez v1, :cond_1f

    goto :goto_4d

    .line 568
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmCanceled(Lcom/android/server/wm/TaskMotionAnimator;Z)V

    .line 569
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    .line 570
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->destroy()V

    const/4 v1, 0x0

    .line 571
    iput-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz p1, :cond_39

    .line 574
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1, v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 576
    :cond_39
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object p1

    .line 577
    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 578
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_4f

    if-eqz p1, :cond_4c

    .line 580
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    invoke-interface {p1, p0, v2}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    :cond_4c
    return-void

    .line 565
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    .line 578
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getDragBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 589
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isAnimating()Z
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 595
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 596
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onSpringAtRest(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 5

    .line 637
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "TaskMotionAnimator"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StashAnimation[finish]: EndBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 643
    :try_start_23
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->destroy()V

    const/4 p1, 0x0

    .line 644
    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v2, p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 647
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_3e

    if-eqz v1, :cond_3d

    .line 649
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-interface {v1, p0, p1}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    :cond_3d
    return-void

    :catchall_3e
    move-exception p0

    .line 647
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public onSpringUpdate(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 13

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 603
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_a7

    .line 605
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 606
    monitor-exit v0

    return-void

    .line 609
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_32

    .line 610
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    goto :goto_36

    .line 612
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 614
    :goto_36
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    float-to-double v3, v1

    .line 616
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v2

    .line 617
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 618
    iget-object v9, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_57

    iget v5, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v8, v5

    if-nez v5, :cond_57

    .line 619
    monitor-exit v0

    return-void

    .line 622
    :cond_57
    invoke-virtual {v9, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v5, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v1, v2, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 625
    iget-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mHandlerAnim:Z

    if-eqz v1, :cond_98

    .line 626
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmClipLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 628
    :cond_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_7 .. :try_end_99} :catchall_a9

    .line 630
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentDisplacementDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_a6

    .line 631
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    :cond_a6
    return-void

    .line 603
    :cond_a7
    :goto_a7
    :try_start_a7
    monitor-exit v0

    return-void

    :catchall_a9
    move-exception p0

    .line 628
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_a9

    throw p0
.end method

.method public start()V
    .registers 5

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 548
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/animation/rebound/Spring;->setEndValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 549
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;->mStartBounds:Landroid/graphics/Rect;

    invoke-static {v1, p0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$mreparentHandlerLeash(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;)V

    .line 550
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 551
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_24

    const-string p0, "TaskMotionAnimator"

    const-string v0, "StashAnimation[start]"

    .line 552
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void

    :catchall_25
    move-exception p0

    .line 550
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method
