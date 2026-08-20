.class public Lcom/android/server/accessibility/gestures/MultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiTap.java"


# static fields
.field public static final MAX_TAPS:I = 0xa


# instance fields
.field public mBaseX:F

.field public mBaseY:F

.field public mCurrentTaps:I

.field public mDoubleTapSlop:I

.field public mDoubleTapTimeout:I

.field public mTapTimeout:I

.field public final mTargetTaps:I

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 7

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 48
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    .line 52
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTapTimeout:I

    .line 57
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapTimeout:I

    .line 58
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiTap;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 64
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 65
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 66
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .registers 3

    .line 130
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Taps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "Triple Tap"

    return-object p0

    :cond_23
    const-string p0, "Double Tap"

    return-object p0
.end method

.method public final isInsideSlop(Landroid/view/MotionEvent;I)Z
    .registers 6

    .line 141
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 142
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float v1, v0, p1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    cmpl-float p1, p0, p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    float-to-double v0, v0

    float-to-double p0, p0

    .line 146
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    int-to-double v0, p2

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 72
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 76
    :cond_1f
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 79
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 81
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-ne v0, v1, :cond_41

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_41
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 113
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_b
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 93
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 96
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_20

    .line 107
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_30

    .line 97
    :cond_20
    :goto_20
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    .line 98
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-ne v0, v1, :cond_2d

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 104
    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Taps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    .line 156
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    .line 158
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
