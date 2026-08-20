.class public final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClickScheduler"
.end annotation


# static fields
.field public static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field public mActive:Z

.field public mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mDelay:I

.field public mEventPolicyFlags:I

.field public mHandler:Landroid/os/Handler;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledClickTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V
    .registers 4

    .line 269
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 274
    iput p3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 275
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public final cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 370
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 372
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 373
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    if-eqz p3, :cond_1c

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 377
    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    :cond_1c
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 313
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 317
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final detectMovement(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 396
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 399
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 400
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 401
    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget p0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double v2, v2

    float-to-double p0, p0

    .line 402
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p0, p0, v2

    if-lez p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public final rescheduleClick(I)V
    .registers 8

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 346
    iget-boolean p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz p1, :cond_13

    iget-wide v4, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_13

    .line 347
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void

    :cond_13
    if-eqz p1, :cond_1a

    .line 352
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 356
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 358
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final resetInternalState()V
    .registers 3

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 384
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    :cond_d
    const-wide/16 v0, -0x1

    .line 387
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-void
.end method

.method public run()V
    .registers 6

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 282
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 283
    iget-object v4, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 287
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->sendClick()V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    return-void
.end method

.method public final sendClick()V
    .registers 24

    move-object/from16 v0, p0

    .line 410
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_c5

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_c5

    .line 414
    :cond_10
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 416
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_27

    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 417
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 418
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v2, v4

    .line 421
    :cond_27
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v4

    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 423
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v2, :cond_3f

    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 424
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 425
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v2, v4

    .line 427
    :cond_3f
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v4

    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 431
    iget-object v12, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v13, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v14, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 433
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    const/16 v19, 0x0

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 435
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 431
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/16 v5, 0xb

    .line 440
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 441
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 443
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    const/16 v6, 0xc

    .line 444
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 445
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 446
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 448
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 449
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 450
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 452
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v3, v1, v1, v4}, Lcom/android/server/accessibility/AutoclickController;->access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 453
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 455
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v2, v2, v3}, Lcom/android/server/accessibility/AutoclickController;->access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 456
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 458
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v5, v5, v2}, Lcom/android/server/accessibility/AutoclickController;->access$201(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 459
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 461
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v0, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v6, v6, v0}, Lcom/android/server/accessibility/AutoclickController;->access$301(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 462
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClickScheduler: { active="

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledClickTime="

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", anchor={x:"

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metastate="

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", policyFlags="

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastMotionEvent="

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_13

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    if-eqz v0, :cond_1e

    .line 307
    iget p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    :cond_1e
    return-void
.end method

.method public updateDelay(I)V
    .registers 2

    .line 333
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    return-void
.end method

.method public updateMetaState(I)V
    .registers 2

    .line 324
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    return-void
.end method
