.class public Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper;
.super Ljava/lang/Object;
.source "LockPatternViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPattern(Landroid/view/View;)V
    .registers 1

    .line 26
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    return-void
.end method

.method public static disableInput(Landroid/view/View;)V
    .registers 1

    .line 17
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    return-void
.end method

.method public static enableInput(Landroid/view/View;)V
    .registers 1

    .line 13
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    return-void
.end method

.method public static getDisplayEnum(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public static setColors(Landroid/view/View;III)V
    .registers 4

    .line 70
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public static setDisplayMode(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-static {p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper;->getDisplayEnum(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object p1

    .line 57
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public static setFadePattern(Landroid/view/View;Z)V
    .registers 2

    .line 74
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    return-void
.end method

.method public static setOnPatternListener(Landroid/view/View;Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;)V
    .registers 3

    .line 30
    new-instance v0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;-><init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;)V

    .line 52
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method public static setPatternColor(Landroid/view/View;III)V
    .registers 4

    .line 66
    check-cast p0, Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    return-void
.end method

.method public static setTactileFeedbackEnabled(Landroid/view/View;Z)V
    .registers 2

    const-string p0, "LockPatternViewWrapper"

    const-string p1, "setTactileFeedbackEnabled deleted API from LockPatternView TOS"

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
