.class public Lcom/android/server/accessibility/magnification/SimpleSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "SimpleSwipe.java"


# instance fields
.field public final mDetectionDurationMillis:I

.field public mLastDown:Landroid/view/MotionEvent;

.field public final mSwipeMinDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0x66

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    .line 41
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 82
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public final gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 6

    .line 73
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    if-eqz p2, :cond_11

    invoke-static {p2, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide p1

    iget p0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public getGestureName()Ljava/lang/String;
    .registers 1

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 47
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    .line 48
    iget v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_9
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_d

    .line 68
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_d
    return-void
.end method
