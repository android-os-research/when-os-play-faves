.class Lcom/android/internal/app/ChooserActivity$7;
.super Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyCropZoomTransition(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$currentItemView:Landroid/view/View;

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 4083
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$7;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$7;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$7;->val$result:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$7;->val$currentItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$TransitionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 8
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 4086
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$7;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$7;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4087
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$7;->val$imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4088
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$7;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 4089
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$7;->val$currentItemView:Landroid/view/View;

    const v1, 0x102055d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 4090
    .local v0, "checkBoxView":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$7;->val$currentItemView:Landroid/view/View;

    const v2, 0x102054a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4091
    .local v1, "favIcon":Landroid/widget/ImageView;
    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x64

    if-eqz v0, :cond_43

    .line 4092
    invoke-virtual {v0}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4093
    :cond_43
    if-eqz v1, :cond_58

    .line 4094
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4095
    :cond_58
    return-void
.end method
