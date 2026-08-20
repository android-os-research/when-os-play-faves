.class Lcom/android/internal/policy/DecorView$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/policy/DecorView$10;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView$10;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/policy/DecorView$10;

    .line 3068
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$10$1;->this$1:Lcom/android/internal/policy/DecorView$10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3076
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10$1;->this$1:Lcom/android/internal/policy/DecorView$10;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 3077
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10$1;->this$1:Lcom/android/internal/policy/DecorView$10;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V

    .line 3078
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3071
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$10$1;->this$1:Lcom/android/internal/policy/DecorView$10;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 3072
    return-void
.end method
