.class Lcom/android/internal/app/ChooserActivity$9;
.super Lcom/android/internal/app/ChooserActivity$AnimatorStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyRotateAnimation(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$imageContainer:Landroid/widget/FrameLayout;

.field final synthetic blacklist val$imageHeight:I

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;Landroid/widget/FrameLayout;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 4268
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$9;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageHeight:I

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$9;->val$result:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$AnimatorStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 4271
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4272
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 4273
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4274
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4275
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$9;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4276
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4277
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4278
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->val$imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4279
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 4280
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$9;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->updatePrivateTipIconPosition()V

    .line 4281
    return-void
.end method
