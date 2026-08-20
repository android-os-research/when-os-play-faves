.class public Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$2;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->lambda$onAttachedToWindow$2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$2;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 362
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 363
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$2;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-static {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->-$$Nest$fgetmColor(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method
