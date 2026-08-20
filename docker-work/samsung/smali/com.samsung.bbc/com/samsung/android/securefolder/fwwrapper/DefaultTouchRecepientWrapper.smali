.class public Lcom/samsung/android/securefolder/fwwrapper/DefaultTouchRecepientWrapper;
.super Ljava/lang/Object;
.source "DefaultTouchRecepientWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultTouchRecepient(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    .line 10
    check-cast p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method
