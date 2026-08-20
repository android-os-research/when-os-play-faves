.class public abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "GestureMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$State;
    }
.end annotation


# static fields
.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_GESTURE_CANCELED:I = 0x3

.field public static final STATE_GESTURE_COMPLETED:I = 0x2

.field public static final STATE_GESTURE_STARTED:I = 0x1


# instance fields
.field public final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field public final mGestureId:I

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field public mState:I
    .annotation build Lcom/android/server/accessibility/gestures/GestureMatcher$State;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 69
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    .line 70
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance p1, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 72
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3
    .param p0    # I
        .annotation build Lcom/android/server/accessibility/gestures/GestureMatcher$State;
        .end annotation
    .end param

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "STATE_GESTURE_CANCELED"

    return-object p0

    :cond_20
    const-string p0, "STATE_GESTURE_COMPLETED"

    return-object p0

    :cond_23
    const-string p0, "STATE_GESTURE_STARTED"

    return-object p0

    :cond_26
    const-string p0, "STATE_CLEAR"

    return-object p0
.end method


# virtual methods
.method public final cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 234
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 224
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    const/4 v0, 0x3

    .line 109
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final cancelPendingTransitions()V
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 82
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    return-void
.end method

.method public final completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14

    .line 269
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 270
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 280
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 249
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final completeAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 259
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    const/4 v0, 0x2

    .line 114
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getGestureId()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    return p0
.end method

.method public abstract getGestureName()Ljava/lang/String;
.end method

.method public final getState()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I
    .registers 8

    .line 135
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_34

    .line 138
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_26

    const/4 v2, 0x5

    if-eq v0, v2, :cond_22

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1e

    .line 156
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_31

    .line 149
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_31

    .line 143
    :cond_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_31

    .line 146
    :cond_26
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_31

    .line 152
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_31

    .line 140
    :cond_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 159
    :goto_31
    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return p0

    :cond_34
    :goto_34
    return v0
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public final setListener(Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    return-void
.end method

.method public final setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1    # I
        .annotation build Lcom/android/server/accessibility/gestures/GestureMatcher$State;
        .end annotation
    .end param

    .line 95
    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    if-eqz v0, :cond_13

    .line 98
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_13
    return-void
.end method

.method public final startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
