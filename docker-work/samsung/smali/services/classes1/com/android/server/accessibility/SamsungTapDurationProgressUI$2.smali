.class public Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;
.super Ljava/lang/Object;
.source "SamsungTapDurationProgressUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 285
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 288
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 289
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->-$$Nest$fgetmProgress(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)Landroid/widget/ProgressBar;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
