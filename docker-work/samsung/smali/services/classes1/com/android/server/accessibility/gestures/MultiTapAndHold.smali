.class public Lcom/android/server/accessibility/gestures/MultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiTap;
.source "MultiTapAndHold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getGestureName()Ljava/lang/String;
    .registers 3

    .line 49
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Taps and Hold"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "Triple Tap and Hold"

    return-object p0

    :cond_23
    const-string p0, "Double Tap and Hold"

    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 36
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-ne v0, v1, :cond_e

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_e
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
