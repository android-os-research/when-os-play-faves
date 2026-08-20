.class public Lcom/android/server/sepunion/cover/CoverHideAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmCallbackRunnable(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 102
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmCallbackRunnable(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fputmCallbackRunnable(Lcom/android/server/sepunion/cover/CoverHideAnimator;Ljava/lang/Runnable;)V

    .line 106
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmCoverHideView(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 107
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmCoverHideView(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmAnimationInterpolator(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$fgetmFadeOutAnimatorListener(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 112
    :cond_53
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
