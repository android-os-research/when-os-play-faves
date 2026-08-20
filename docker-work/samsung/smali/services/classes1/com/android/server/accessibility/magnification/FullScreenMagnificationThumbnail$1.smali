.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;
.super Ljava/lang/Object;
.source "FullScreenMagnificationThumbnail.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;->makeAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;Landroid/view/View;)V
    .registers 3

    .line 341
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    if-le p1, v0, :cond_17

    move p1, v0

    .line 348
    :cond_17
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationThumbnail$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_20
    return-void
.end method
