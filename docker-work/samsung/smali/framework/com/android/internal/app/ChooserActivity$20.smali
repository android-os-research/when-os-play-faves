.class Lcom/android/internal/app/ChooserActivity$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->startGuideLabelAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist cnt:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$animSet:Landroid/animation/AnimatorSet;

.field final synthetic blacklist val$fadeOutAnim:Landroid/animation/ValueAnimator;

.field final synthetic blacklist val$parentView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 9948
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$20;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$20;->val$animSet:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$20;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 9949
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 9951
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9952
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 9953
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 9954
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    goto :goto_23

    .line 9956
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 9957
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$20$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$20$1;-><init>(Lcom/android/internal/app/ChooserActivity$20;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9963
    :goto_23
    return-void
.end method
