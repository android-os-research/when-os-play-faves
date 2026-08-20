.class public Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;,
        Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/gestures/TouchState$State;
    }
.end annotation


# static fields
.field public static final ALL_POINTER_ID_BITS:I = -0x1

.field public static final LOG_TAG:Ljava/lang/String; = "TouchState"

.field public static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_GESTURE_DETECTING:I = 0x5

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field public mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mDisplayId:I

.field public mInjectedPointersDown:I

.field public mLastInjectedDownEventTime:J

.field public mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field public mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field public mLastReceivedEvent:Landroid/view/MotionEvent;

.field public mLastReceivedPolicyFlags:I

.field public mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field public mLastTouchedWindowId:I

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public mServiceDetectsGestures:Z

.field public mServiceDetectsGesturesRequested:Z

.field public mState:I


# direct methods
.method public constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 93
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    .line 101
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    .line 102
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 103
    new-instance p1, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_23

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string p0, "STATE_GESTURE_DETECTING"

    return-object p0

    :cond_26
    const-string p0, "STATE_DELEGATING"

    return-object p0

    :cond_29
    const-string p0, "STATE_DRAGGING"

    return-object p0

    :cond_2c
    const-string p0, "STATE_TOUCH_EXPLORING"

    return-object p0

    :cond_2f
    const-string p0, "STATE_TOUCH_INTERACTING"

    return-object p0

    :cond_32
    const-string p0, "STATE_CLEAR"

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 109
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    .line 111
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_12

    .line 112
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 115
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 116
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 1

    .line 367
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public getInjectedPointersDown()I
    .registers 1

    .line 372
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return p0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 1

    .line 388
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getLastReceivedPolicyFlags()I
    .registers 1

    .line 343
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    return p0
.end method

.method public getLastReceivedRawEvent()Landroid/view/MotionEvent;
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public getLastTouchedWindowId()I
    .registers 1

    .line 362
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    return p0
.end method

.method public getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object p0
.end method

.method public getState()I
    .registers 1
    .annotation build Lcom/android/server/accessibility/gestures/TouchState$State;
    .end annotation

    .line 242
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return p0
.end method

.method public isClear()Z
    .registers 1

    .line 306
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isDelegating()Z
    .registers 2

    .line 267
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isDragging()Z
    .registers 2

    .line 285
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isGestureDetecting()Z
    .registers 2

    .line 276
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 383
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isServiceDetectingGestures()Z
    .registers 1

    .line 392
    iget-boolean p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    return p0
.end method

.method public isTouchExploring()Z
    .registers 2

    .line 258
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isTouchInteracting()Z
    .registers 2

    .line 294
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onInjectedAccessibilityEvent(I)V
    .registers 3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x400

    if-eq p1, v0, :cond_2a

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_26

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_22

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_1e

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_19

    goto :goto_31

    :cond_19
    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    goto :goto_31

    .line 215
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    goto :goto_31

    .line 233
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    goto :goto_31

    .line 228
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startGestureDetecting()V

    goto :goto_31

    .line 225
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    goto :goto_31

    .line 222
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchExploring()V

    :goto_31
    return-void
.end method

.method public onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-eqz v0, :cond_5b

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_40

    const/16 v1, 0x9

    if-eq v0, v1, :cond_40

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    goto :goto_66

    .line 170
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2c

    .line 171
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 173
    :cond_2c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_39

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    :cond_39
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_66

    .line 164
    :cond_40
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_47

    .line 165
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    :cond_47
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    goto :goto_66

    .line 157
    :cond_4e
    iget p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v0, v1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    if-nez p1, :cond_66

    const-wide/16 v0, 0x0

    .line 159
    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_66

    .line 152
    :cond_5b
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    :cond_66
    :goto_66
    return-void
.end method

.method public onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 189
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x80

    if-eq v0, v1, :cond_16

    const/16 v1, 0x100

    if-eq v0, v1, :cond_16

    const p1, 0x8000

    if-eq v0, p1, :cond_1d

    goto :goto_2a

    .line 200
    :cond_16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_2a

    .line 192
    :cond_1d
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz p1, :cond_27

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    :cond_27
    const/4 p1, -0x1

    .line 196
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    :goto_2a
    return-void
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 125
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_f

    .line 126
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 131
    :cond_16
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1d

    .line 132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 134
    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 135
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 136
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 137
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setServiceDetectsGestures(Z)V
    .registers 2

    .line 400
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    return-void
.end method

.method public setState(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/accessibility/gestures/TouchState$State;
        .end annotation
    .end param

    .line 247
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 251
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 252
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_12

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchStateChanged(II)Z

    :cond_12
    return-void
.end method

.method public startDelegating()V
    .registers 2

    const/4 v0, 0x4

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startDragging()V
    .registers 2

    const/4 v0, 0x3

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startGestureDetecting()V
    .registers 2

    const/4 v0, 0x5

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startTouchExploring()V
    .registers 2

    const/4 v0, 0x2

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startTouchInteracting()V
    .registers 2

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchState { mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
