.class Landroid/transition/Visibility$DisappearListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field greylist-max-o mCanceled:Z

.field private final greylist-max-o mFinalVisibility:I

.field private greylist-max-o mLayoutSuppressed:Z

.field private final greylist-max-o mParent:Landroid/view/ViewGroup;

.field private final greylist-max-o mSuppressLayout:Z

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;IZ)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    .line 555
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 556
    iput-object p1, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 557
    iput p2, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 559
    iput-boolean p3, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    .line 561
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 562
    return-void
.end method

.method private greylist-max-o hideViewWhenNotCanceled()V
    .registers 3

    .line 613
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_12

    .line 615
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 616
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 617
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 621
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 622
    return-void
.end method

.method private greylist-max-o suppressLayout(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .line 625
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 626
    iput-boolean p1, p0, Landroid/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 627
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 629
    :cond_11
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 581
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 593
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 594
    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 566
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_b

    .line 567
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 569
    :cond_b
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 585
    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 573
    iget-boolean v0, p0, Landroid/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_a

    .line 574
    iget-object v0, p0, Landroid/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 576
    :cond_a
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 589
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 598
    invoke-direct {p0}, Landroid/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 599
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 600
    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 605
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 610
    return-void
.end method
