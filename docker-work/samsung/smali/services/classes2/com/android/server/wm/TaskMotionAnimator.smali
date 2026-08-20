.class public Lcom/android/server/wm/TaskMotionAnimator;
.super Ljava/lang/Object;
.source "TaskMotionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;,
        Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;,
        Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;,
        Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;,
        Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskMotionAnimator"

.field public static final TYPE_ANIM_FLING:I = 0x2

.field public static final TYPE_ANIM_SCALE_DOWN:I = 0x0

.field public static final TYPE_ANIM_SCALE_UP:I = 0x1

.field public static final TYPE_ANIM_STASH:I = 0x3


# instance fields
.field public final handlerWindow:Lcom/android/server/wm/WindowState;

.field public final mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

.field public mAnimationFinishedCallback:Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

.field public mCanceled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mClipLeash:Landroid/view/SurfaceControl;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mLock:Ljava/lang/Object;

.field public final mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mCanceled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClipLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mClipLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/animation/rebound/SpringSystem;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCanceled(Lcom/android/server/wm/TaskMotionAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mCanceled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreparentHandlerLeash(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskMotionAnimator;->reparentHandlerLeash(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFFLcom/android/server/wm/animation/rebound/SpringSystem;ZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V
    .registers 27

    move-object v10, p0

    move v0, p1

    move-object v1, p3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v10, Lcom/android/server/wm/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    move-object v2, p2

    .line 85
    iput-object v2, v10, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/wm/TaskMotionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 87
    new-instance v2, Lcom/android/server/wm/TaskMotionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/TaskMotionAnimator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/wm/TaskMotionAnimator;->handlerWindow:Lcom/android/server/wm/WindowState;

    .line 88
    iput-object v1, v10, Lcom/android/server/wm/TaskMotionAnimator;->mTask:Lcom/android/server/wm/Task;

    move-object/from16 v1, p12

    .line 89
    iput-object v1, v10, Lcom/android/server/wm/TaskMotionAnimator;->mSpringSystem:Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-object/from16 v1, p14

    .line 90
    iput-object v1, v10, Lcom/android/server/wm/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    if-eqz v0, :cond_6d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    goto :goto_6d

    :cond_31
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 94
    new-instance v11, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;-><init>(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFF)V

    iput-object v11, v10, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    goto :goto_74

    :cond_4e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_69

    .line 97
    new-instance v9, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/TaskMotionAnimator$StashAnimation;-><init>(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZ)V

    iput-object v9, v10, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    goto :goto_74

    :cond_69
    const/4 v0, 0x0

    .line 100
    iput-object v0, v10, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    goto :goto_74

    .line 92
    :cond_6d
    :goto_6d
    new-instance v1, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;-><init>(Lcom/android/server/wm/TaskMotionAnimator;I)V

    iput-object v1, v10, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    :goto_74
    return-void
.end method

.method public constructor <init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V
    .registers 20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v14, p4

    .line 78
    invoke-direct/range {v0 .. v14}, Lcom/android/server/wm/TaskMotionAnimator;-><init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFFLcom/android/server/wm/animation/rebound/SpringSystem;ZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation(Z)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0, p1}, Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;->cancel(Z)V

    return-void
.end method

.method public getDragBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0, p1}, Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;->getDragBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isAnimating()Z
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0}, Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public final reparentHandlerLeash(Landroid/graphics/Rect;)V
    .registers 6

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator;->handlerWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    return-void

    .line 669
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTask:Lcom/android/server/wm/Task;

    .line 670
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTask:Lcom/android/server/wm/Task;

    .line 671
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - animation-leash of freeform stash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 672
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "SurfaceAnimator.createHandlerAnimationLeash"

    .line 674
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 676
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 678
    iput-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mClipLeash:Landroid/view/SurfaceControl;

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 680
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v2, v1, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 681
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 682
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 684
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public resetHandlerLeash()V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator;->handlerWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    if-eqz v0, :cond_2a

    .line 656
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mClipLeash:Landroid/view/SurfaceControl;

    if-nez v2, :cond_12

    goto :goto_2a

    .line 659
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator;->handlerWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator;->mClipLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 661
    iput-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator;->mClipLeash:Landroid/view/SurfaceControl;

    :cond_2a
    :goto_2a
    return-void
.end method

.method public startAnimation()V
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator;->mAnimation:Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0}, Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;->start()V

    return-void
.end method
