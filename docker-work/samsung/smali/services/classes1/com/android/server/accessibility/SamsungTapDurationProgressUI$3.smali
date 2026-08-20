.class public Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;
.super Ljava/lang/Object;
.source "SamsungTapDurationProgressUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 308
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmStandBy(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmIsRemoveAnimationEnabled(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmIsShortThreshold(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmHold(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 302
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 303
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$3;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmView(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
