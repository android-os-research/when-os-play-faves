.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "WindowMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
.implements Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DetectingState"
.end annotation


# instance fields
.field public final mDetectTripleTap:Z

.field public final mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;Z)V
    .registers 14

    .line 462
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-boolean p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mDetectTripleTap:Z

    .line 464
    new-instance v0, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    const/16 v4, 0x69

    if-eqz p3, :cond_16

    move v5, v4

    goto :goto_18

    :cond_16
    const/16 v5, 0x67

    :goto_18
    const/4 v6, 0x0

    .line 467
    invoke-direct {v0, p2, v3, v5, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 468
    new-instance v3, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    if-eqz p3, :cond_22

    move v5, v2

    goto :goto_23

    :cond_22
    move v5, v1

    :goto_23
    const/16 v7, 0x6a

    if-eqz p3, :cond_29

    move v8, v7

    goto :goto_2b

    :cond_29
    const/16 v8, 0x68

    .line 472
    :goto_2b
    invoke-direct {v3, p2, v5, v8, v6}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 476
    new-instance v5, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v8, 0x2

    if-eqz p3, :cond_35

    move v9, v2

    goto :goto_36

    :cond_35
    move v9, v8

    :goto_36
    if-eqz p3, :cond_39

    goto :goto_3b

    :cond_39
    const/16 v4, 0xc9

    .line 479
    :goto_3b
    invoke-direct {v5, p2, v9, v4, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 481
    new-instance v4, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    if-eqz p3, :cond_44

    move v9, v2

    goto :goto_45

    :cond_44
    move v9, v8

    :goto_45
    if-eqz p3, :cond_48

    goto :goto_4a

    :cond_48
    const/16 v7, 0xca

    .line 484
    :goto_4a
    invoke-direct {v4, p2, v9, v7, v6}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 487
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$misScreenReaderEnabled(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Z

    move-result p1

    .line 490
    new-instance p3, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/android/server/accessibility/gestures/GestureMatcher;

    const/4 v7, 0x0

    new-instance v9, Lcom/android/server/accessibility/magnification/SimpleSwipe;

    invoke-direct {v9, p2}, Lcom/android/server/accessibility/magnification/SimpleSwipe;-><init>(Landroid/content/Context;)V

    aput-object v9, v6, v7

    if-eqz p1, :cond_61

    move-object v0, v5

    :cond_61
    aput-object v0, v6, v1

    if-eqz p1, :cond_66

    move-object v3, v4

    :cond_66
    aput-object v3, v6, v8

    .line 493
    new-instance p1, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;

    invoke-direct {p1, p2}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;-><init>(Landroid/content/Context;)V

    aput-object p1, v6, v2

    invoke-direct {p3, p0, v6}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    return-void
.end method


# virtual methods
.method public final changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V
    .registers 4

    if-eqz p1, :cond_11

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    :cond_10
    return-void

    .line 560
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public onGestureCancelled(JLjava/util/List;Landroid/view/MotionEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 546
    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 547
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureCancelled : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    .line 552
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onGestureCompleted(IJLjava/util/List;Landroid/view/MotionEvent;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 520
    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$sfgetDEBUG_DETECTING()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 521
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : gesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/16 v0, 0x65

    if-ne p1, v0, :cond_68

    .line 527
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmWindowMagnificationMgr(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 528
    invoke-virtual {v0, v1, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->pointersInWindow(ILandroid/view/MotionEvent;)I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmWindowMagnificationMgr(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 529
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 530
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$mtransitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    goto :goto_88

    :cond_68
    const/16 v0, 0x69

    if-ne p1, v0, :cond_72

    .line 532
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$monTripleTap(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V

    goto :goto_88

    :cond_72
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_7c

    .line 534
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$monTripleTapAndHold(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V

    goto :goto_88

    .line 536
    :cond_7c
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmMotionEventDispatcherDelegate(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object p1

    invoke-virtual {p1, p4, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    .line 538
    invoke-virtual {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    :goto_88
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 500
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public shouldStopDetection(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 512
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->-$$Nest$fgetmWindowMagnificationMgr(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-nez p1, :cond_16

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mDetectTripleTap:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{, mGestureTimeoutObserver ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
