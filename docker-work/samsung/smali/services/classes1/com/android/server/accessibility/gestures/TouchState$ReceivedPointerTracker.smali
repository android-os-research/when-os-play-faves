.class public Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field public static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field public mLastReceivedDownEdgeFlags:I

.field public mPrimaryPointerId:I

.field public final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field public mReceivedPointersDown:I

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    new-array p1, p1, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 407
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 420
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 426
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :goto_5
    const/16 v1, 0x20

    if-ge v0, v1, :cond_17

    .line 428
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    new-instance v2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public final findPrimaryPointerId()I
    .registers 9

    .line 551
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    :cond_8
    :goto_8
    if-lez v0, :cond_21

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v0, v5

    .line 555
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_8

    move v1, v4

    move-wide v2, v5

    goto :goto_8

    :cond_21
    return v1
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 1

    .line 508
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return p0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    .line 500
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 501
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 503
    :cond_b
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return p0
.end method

.method public getReceivedPointerDownCount()I
    .registers 1

    .line 460
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmX(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result p0

    return p0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 2

    .line 487
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->-$$Nest$fgetmY(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result p0

    return p0
.end method

.method public final handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 8

    .line 518
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 522
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 523
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v1, v1, v0

    .line 524
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 523
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->set(FFJ)V

    .line 526
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return-void
.end method

.method public final handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 4

    .line 536
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    .line 538
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int p2, p2

    and-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 539
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->clear()V

    .line 540
    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne p2, p1, :cond_1a

    const/4 p1, -0x1

    .line 541
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_1a
    return-void
.end method

.method public isReceivedPointerDown(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 471
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10

    goto :goto_2f

    .line 450
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 444
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 447
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_2f

    .line 441
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    :goto_2f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================="

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDown pointers #"

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1c
    const/16 v2, 0x20

    if-ge v1, v2, :cond_31

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    const-string v1, "]"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPrimary pointer id [ "

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n========================="

    .line 581
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
