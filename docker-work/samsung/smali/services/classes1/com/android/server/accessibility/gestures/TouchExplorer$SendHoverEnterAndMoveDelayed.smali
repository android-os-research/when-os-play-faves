.class public Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field public final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field public final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mPointerIdBits:I

.field public mPolicyFlags:I

.field public final mRawEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .registers 2

    .line 1544
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SendHoverEnterAndMoveDelayed"

    .line 1545
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    .line 1547
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    .line 1548
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 4

    .line 1563
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1569
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    :cond_12
    return-void
.end method

.method public final clear()V
    .registers 3

    const/4 v0, -0x1

    .line 1579
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    const/4 v0, 0x0

    .line 1580
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1581
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_1e

    .line 1583
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1585
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_36

    .line 1587
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_36
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1594
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    :cond_c
    return-void
.end method

.method public final isPending()Z
    .registers 2

    .line 1575
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V
    .registers 5

    .line 1555
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 1557
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    .line 1558
    iput p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1559
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmDetermineUserIntentTimeout(Lcom/android/server/accessibility/gestures/TouchExplorer;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 10

    .line 1599
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmReceivedPointerTracker(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted touch exploration with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmReceivedPointerTracker(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object p0

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pointers down."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TouchExplorer"

    .line 1601
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1609
    :cond_33
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmDispatcher(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1610
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1611
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmState(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState;

    move-result-object v3

    .line 1614
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmGestureDetector(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/GestureManifold;

    move-result-object v4

    .line 1615
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 1616
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$mdispatchGesture(Lcom/android/server/accessibility/gestures/TouchExplorer;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 1618
    :cond_69
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1620
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmDispatcher(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    const/4 v3, 0x0

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    .line 1623
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/MotionEvent;

    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    move-object v3, v0

    .line 1620
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a1
    if-ge v1, v0, :cond_c6

    .line 1635
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->-$$Nest$fgetmDispatcher(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    .line 1636
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/MotionEvent;

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    .line 1638
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/MotionEvent;

    iget v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v8, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    .line 1635
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 1648
    :cond_c6
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    return-void
.end method

.method public setPointerIdBits(I)V
    .registers 2

    .line 1652
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    return-void
.end method

.method public setPolicyFlags(I)V
    .registers 2

    .line 1656
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    return-void
.end method
