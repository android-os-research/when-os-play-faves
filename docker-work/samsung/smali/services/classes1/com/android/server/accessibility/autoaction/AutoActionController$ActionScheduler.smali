.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;
.super Ljava/lang/Object;
.source "AutoActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoaction/AutoActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionScheduler"
.end annotation


# static fields
.field public static final ACTION_TYPE_CLICK:I = 0x1

.field public static final ACTION_TYPE_DOUBLE_CLICK:I = 0x3

.field public static final ACTION_TYPE_NONE:I = 0x0

.field public static final ACTION_TYPE_PRESS_AND_HOLD:I = 0x2

.field public static final DELAY_DOUBLE_CLICK:J = 0x32L

.field public static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field public mActive:Z

.field public mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public mCornerActionType:I

.field public mDelay:I

.field public mDisplayId:I

.field public mEventPolicyFlags:I

.field public mHandler:Landroid/os/Handler;

.field public mIsPauseAutoClick:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledActionTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCornerActionController(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Lcom/android/server/accessibility/autoaction/CornerActionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPauseAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCornerActionType(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCornerActionController(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->setCornerActionController(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToastToggleAutoClick(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->showToastToggleAutoClick()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;III)V
    .registers 6

    .line 322
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 325
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 326
    iput p3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 327
    iput p4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 328
    iput p5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 329
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    const/4 p1, 0x0

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    return-void
.end method


# virtual methods
.method public final cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 457
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 459
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 460
    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    if-eqz p3, :cond_1c

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 464
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_1c
    return-void
.end method

.method public cancel()V
    .registers 3

    .line 369
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 373
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setDurationViewOnOff(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 376
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final click(JJ)V
    .registers 15

    .line 553
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_6f

    const/4 v5, 0x0

    .line 556
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v7, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 p2, 0x1002

    .line 558
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 p2, 0x800000

    .line 559
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 560
    iget p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 562
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    const/16 p2, 0xb

    .line 563
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 p2, 0x1

    .line 564
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 566
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p3

    const/16 p4, 0xc

    .line 567
    invoke-virtual {p3, p4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 568
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 569
    invoke-virtual {p3, v9}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 571
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p4

    .line 572
    invoke-virtual {p4, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 573
    invoke-virtual {p4, v9}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 575
    invoke-virtual {v0, p1, v9}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 578
    invoke-virtual {v0, p0, v9}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 579
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 581
    invoke-virtual {v0, p3, v9}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 582
    invoke-virtual {p3}, Landroid/view/MotionEvent;->recycle()V

    .line 584
    invoke-virtual {v0, p4, v9}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 585
    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    :cond_6f
    return-void
.end method

.method public final detectMovement(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 483
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 487
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 489
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 490
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double v2, v2

    float-to-double p0, p0

    .line 491
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public final rescheduleAction(I)V
    .registers 10

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4a

    .line 413
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 414
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 415
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 417
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setDurationViewOnOff(Z)V

    .line 418
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 419
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->createDurationProgress(I)V

    .line 421
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(FFI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    .line 422
    iget v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    if-ne v3, v1, :cond_4a

    .line 423
    :cond_3a
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->updateDurationViewXY(FF)V

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setDurationViewOnOff(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->startDuration(J)V

    .line 429
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 433
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    if-eqz p1, :cond_5d

    iget-wide v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_5d

    .line 434
    iput-wide v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    return-void

    :cond_5d
    if-eqz p1, :cond_64

    .line 439
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    :cond_64
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 443
    iput-wide v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 445
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final resetInternalState()V
    .registers 3

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 470
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 471
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_d
    const-wide/16 v0, -0x1

    .line 474
    iput-wide v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    return-void
.end method

.method public run()V
    .registers 6

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 337
    iget-wide v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 338
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 342
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->sendAction()V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    return-void
.end method

.method public final sendAction()V
    .registers 9

    .line 501
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_ac

    .line 505
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    new-array v1, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 508
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 509
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v1, v3

    .line 512
    :cond_25
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 514
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v1, :cond_3d

    new-array v1, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 515
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 516
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v1, v3

    .line 518
    :cond_3d
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 522
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    if-eqz v4, :cond_a1

    .line 523
    invoke-virtual {v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 524
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setDurationViewOnOff(Z)V

    .line 525
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v3

    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(FFI)I

    move-result v4

    .line 527
    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-nez v5, :cond_8f

    if-eq v4, v7, :cond_a1

    .line 529
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {v0, v4, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->handleCornerAction(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    if-ne v0, v6, :cond_80

    .line 531
    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    invoke-virtual {p0, v4, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->showActionSelectPopup(II)V

    goto :goto_8e

    :cond_80
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8e

    .line 533
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 534
    iput v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 535
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->showToastToggleAutoClick()V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    if-ne v5, v2, :cond_9c

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performGestureAction(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    return-void

    :cond_9c
    if-ne v5, v6, :cond_a1

    if-eq v4, v7, :cond_a1

    return-void

    .line 547
    :cond_a1
    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    if-eqz v2, :cond_ac

    iget-boolean v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    if-nez v2, :cond_ac

    .line 548
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->click(JJ)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public final setCornerActionController(Z)V
    .registers 4

    if-eqz p1, :cond_16

    .line 591
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/AutoActionController;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 593
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    :goto_19
    return-void
.end method

.method public final showActionSelectPopup(II)V
    .registers 11

    .line 598
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCornerActions(I)[Ljava/lang/String;

    move-result-object v4

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    array-length v1, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_5b

    aget-object v5, v4, v3

    const-string/jumbo v6, "pause_resume_auto_click"

    .line 601
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 602
    iget-boolean v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    if-eqz v5, :cond_23

    const-string/jumbo v5, "resume_auto_click"

    goto :goto_4f

    :cond_23
    const-string/jumbo v5, "pause_auto_click"

    goto :goto_4f

    :cond_27
    const-string/jumbo v6, "sound_vibrate_mute"

    .line 603
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 604
    iget-object v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {v6}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    if-eqz v6, :cond_49

    .line 605
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_49

    const/4 v6, 0x1

    goto :goto_4a

    :cond_49
    move v6, v2

    :goto_4a
    if-nez v6, :cond_4f

    const-string/jumbo v5, "sound_mute"

    .line 610
    :cond_4f
    :goto_4f
    iget-object v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-virtual {v6, v5}, Lcom/android/server/accessibility/autoaction/CornerActionController;->convertKeyToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 613
    :cond_5b
    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 614
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1, p1}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;-><init>(Landroid/content/Context;I)V

    .line 615
    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->setCornerActionList(Ljava/util/List;)V

    .line 616
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;

    invoke-direct {v0, p0, v7}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 623
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 637
    invoke-virtual {v7}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->show()V

    return-void
.end method

.method public final showToastToggleAutoClick()V
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionScheduler: { active="

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledActionTime="

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", anchor={x:"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metastate="

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags="

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMotionEvent="

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    if-eqz v0, :cond_24

    .line 363
    iget p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->rescheduleAction(I)V

    :cond_24
    return-void
.end method

.method public updateDelay(I)V
    .registers 2

    .line 393
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    return-void
.end method

.method public updateIsPauseAutoClick(Z)V
    .registers 3

    .line 401
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 402
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_auto_click_paused_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public updateMetaState(I)V
    .registers 2

    .line 384
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    return-void
.end method

.method public updateType(I)V
    .registers 2

    .line 397
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    return-void
.end method
