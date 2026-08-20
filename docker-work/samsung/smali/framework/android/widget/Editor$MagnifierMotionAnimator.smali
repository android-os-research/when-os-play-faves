.class Landroid/widget/Editor$MagnifierMotionAnimator;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnifierMotionAnimator"
.end annotation


# static fields
.field private static final greylist-max-o DURATION:J = 0x64L


# instance fields
.field private greylist-max-o mAnimationCurrentX:F

.field private greylist-max-o mAnimationCurrentY:F

.field private greylist-max-o mAnimationStartX:F

.field private greylist-max-o mAnimationStartY:F

.field private final greylist-max-o mAnimator:Landroid/animation/ValueAnimator;

.field private greylist-max-o mLastX:F

.field private greylist-max-o mLastY:F

.field private final greylist-max-o mMagnifier:Landroid/widget/Magnifier;

.field private greylist-max-o mMagnifierIsShowing:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->dismiss()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$MagnifierMotionAnimator;->show(FF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$MagnifierMotionAnimator;->update()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/widget/Magnifier;)V
    .registers 5
    .param p1, "magnifier"    # Landroid/widget/Magnifier;

    .line 5614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5615
    iput-object p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    .line 5617
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 5618
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5619
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5620
    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5628
    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Magnifier;Landroid/widget/Editor$MagnifierMotionAnimator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;)V

    return-void
.end method

.method private greylist-max-o dismiss()V
    .registers 2

    .line 5670
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    .line 5671
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5672
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 5673
    return-void
.end method

.method private greylist-max-o show(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 5637
    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 5639
    .local v0, "startNewAnimation":Z
    :goto_e
    if-eqz v0, :cond_34

    .line 5640
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5641
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5642
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 5643
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    goto :goto_2e

    .line 5645
    :cond_26
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    .line 5646
    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    iput v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    .line 5648
    :goto_2e
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_41

    .line 5650
    :cond_34
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_41

    .line 5651
    iget-object v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v2, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    .line 5654
    :cond_41
    :goto_41
    iput p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    .line 5655
    iput p2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    .line 5656
    iput-boolean v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifierIsShowing:Z

    .line 5657
    return-void
.end method

.method private greylist-max-o update()V
    .registers 2

    .line 5663
    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->update()V

    .line 5664
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$android-widget-Editor$MagnifierMotionAnimator(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 5622
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartX:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastX:F

    sub-float/2addr v1, v0

    .line 5623
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    .line 5624
    iget v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationStartY:F

    iget v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mLastY:F

    sub-float/2addr v1, v0

    .line 5625
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentY:F

    .line 5626
    iget-object v1, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mMagnifier:Landroid/widget/Magnifier;

    iget v2, p0, Landroid/widget/Editor$MagnifierMotionAnimator;->mAnimationCurrentX:F

    invoke-virtual {v1, v2, v0}, Landroid/widget/Magnifier;->show(FF)V

    .line 5627
    return-void
.end method
