.class public Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;
.source "MultiFingerMultiTapAndHold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 6

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getGestureName()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    const-string p0, "Single"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_1a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_23

    const-string p0, "Double"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_23
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2c

    const-string p0, "Triple"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    if-le p0, v1, :cond_31

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    const-string p0, " Tap and hold"

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 40
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_12

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_12
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 47
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_c

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_12

    .line 51
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_12
    return-void
.end method
