.class Lcom/android/internal/app/ChooserActivity$8;
.super Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semApplyCropReverseAnimation(Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$imageView:Landroid/widget/ImageView;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/graphics/Bitmap;ILandroid/widget/ImageView;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 4154
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$8;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$8;->val$result:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$8;->val$position:I

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$8;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$TransitionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 4157
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$8;->val$result:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1e

    .line 4158
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$8;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$8;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 4159
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$8;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4160
    .end local v0    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    goto :goto_23

    .line 4161
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$8;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4163
    :goto_23
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$8;->val$imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4164
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$8;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 4165
    return-void
.end method
