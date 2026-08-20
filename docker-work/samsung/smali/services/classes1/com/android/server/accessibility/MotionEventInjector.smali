.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final EVENT_BUTTON_STATE:I = 0x0

.field public static final EVENT_EDGE_FLAGS:I = 0x0

.field public static final EVENT_FLAGS:I = 0x0

.field public static final EVENT_META_STATE:I = 0x0

.field public static final EVENT_SOURCE:I = 0x1002

.field public static final EVENT_X_PRECISION:F = 1.0f

.field public static final EVENT_Y_PRECISION:F = 1.0f

.field public static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field public static final MESSAGE_INJECT_EVENTS:I = 0x2

.field public static final MESSAGE_SEND_MOTION_EVENT:I = 0x1

.field public static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field public mDownTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mLastScheduledEventTime:J

.field public mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field public mNumLastTouchPoints:I

.field public final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mSequencesInProgress:Landroid/util/IntArray;

.field public mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public mStrokeIdToPointerId:Landroid/util/SparseIntArray;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 5

    .line 93
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 94
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method public static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_d

    .line 510
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    move-object v8, p0

    .line 456
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v11, p3

    move v12, v10

    :goto_9
    if-ge v12, v11, :cond_45

    .line 458
    aget-object v0, p2, v12

    iget-boolean v1, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v1, :cond_3e

    .line 460
    iget v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, v9, v1

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 461
    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v0, 0x1

    if-ne v7, v0, :cond_23

    move v0, v10

    goto :goto_24

    :cond_23
    const/4 v0, 0x5

    :goto_24
    move-wide/from16 v13, p4

    if-nez v0, :cond_2a

    .line 464
    iput-wide v13, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    :cond_2a
    shl-int/lit8 v1, v12, 0x8

    or-int v5, v0, v1

    .line 467
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    move-object v0, p0

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_3e
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    :goto_42
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_45
    return-void
.end method

.method public final appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_7
    if-ge v1, p3, :cond_34

    .line 410
    iget v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v4, p2, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v3

    if-ltz v3, :cond_31

    .line 413
    aget-object v3, v6, v3

    iget v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v5, p2, v1

    iget v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2c

    iget v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move v4, v0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v4, 0x1

    :goto_2d
    or-int/2addr v2, v4

    .line 415
    invoke-virtual {v3, v5}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_34
    if-eqz v2, :cond_44

    .line 420
    iget-wide v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    const/4 v5, 0x2

    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, p0

    move-wide v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method public final appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    move-object v8, p0

    .line 428
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    const/4 v0, 0x0

    move/from16 v11, p3

    move v10, v0

    :goto_9
    if-ge v10, v11, :cond_57

    .line 430
    aget-object v0, p2, v10

    iget-boolean v1, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_53

    .line 431
    iget v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v1, v0}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v12

    if-gez v12, :cond_1c

    goto :goto_53

    .line 436
    :cond_1c
    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v0, 0x1

    if-ne v7, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x6

    :goto_23
    shl-int/lit8 v1, v12, 0x8

    or-int v5, v0, v1

    .line 439
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    move-object v0, p0

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_35
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v2, v0, -0x1

    if-ge v12, v2, :cond_47

    .line 443
    aget-object v0, v9, v12

    iget-object v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v12, v12, 0x1

    aget-object v2, v2, v12

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    goto :goto_35

    :cond_47
    add-int/lit8 v0, v0, -0x1

    .line 445
    iput v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_54

    .line 447
    iget-object v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_54

    :cond_53
    :goto_53
    move-object v1, p1

    :cond_54
    :goto_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_57
    return-void
.end method

.method public final cancelAnyGestureInProgress(I)V
    .registers 12

    .line 326
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 329
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v8

    const/4 v9, 0x1

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    const/high16 v2, 0x40020000    # 2.03125f

    .line 330
    invoke-virtual {p0, v0, v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 333
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public final cancelAnyPendingInjectedEvents()V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x1002

    if-eqz v0, :cond_30

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1b
    if-ltz v0, :cond_37

    .line 342
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 343
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 342
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 344
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 346
    :cond_30
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_37

    .line 348
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 350
    :cond_37
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 351
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public clearEvents(I)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 148
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_1b

    .line 395
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    .line 396
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1b

    .line 398
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 401
    :cond_1b
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object p0
.end method

.method public final getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;J)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    .line 374
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_48

    .line 375
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 376
    iget v11, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 377
    array-length v0, v7

    if-le v11, v0, :cond_23

    .line 378
    iput v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 379
    invoke-interface {v6}, Ljava/util/List;->clear()V

    return-object v6

    .line 383
    :cond_23
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 385
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 387
    iget-object v2, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v0, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v4, p2, v0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_48
    return-object v6
.end method

.method public final getUnusedPointerId()I
    .registers 3

    const/4 v0, 0x0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    return v1

    :cond_10
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1d

    .line 161
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 162
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;II)V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return v1

    :cond_1d
    const/4 v2, 0x0

    if-eq v0, v1, :cond_39

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionEventInjector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 171
    :cond_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    const/high16 v3, 0x40020000    # 2.03125f

    .line 172
    invoke-virtual {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 175
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_48

    move p1, v1

    goto :goto_49

    :cond_48
    move p1, v2

    :goto_49
    if-eqz p1, :cond_5b

    .line 177
    iget-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 178
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p0, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_5b
    return v1
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "II)V"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 110
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 111
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 112
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 113
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 114
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "II)V"
        }
    .end annotation

    const-string v0, "MotionEventInjector"

    .line 185
    iget-boolean v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 187
    :try_start_7
    invoke-interface {p2, p3, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_26

    :catch_b
    const-string p0, "Null pointer exception in injectEventsMainThread"

    .line 194
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :catch_11
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending status with mIsDestroyed to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void

    .line 200
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_31

    .line 201
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    .line 205
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 208
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne p2, v1, :cond_41

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 210
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 211
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    :cond_48
    if-nez v0, :cond_52

    .line 216
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/16 v0, 0x1002

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 220
    :cond_52
    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 224
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-nez v3, :cond_62

    move-wide v3, v0

    goto :goto_64

    :cond_62
    iget-wide v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 223
    :goto_64
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 226
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    return-void

    .line 229
    :cond_72
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {p2, p3}, Landroid/util/IntArray;->add(I)V

    move p2, v2

    .line 231
    :goto_78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_b1

    .line 232
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MotionEvent;

    .line 233
    invoke-virtual {p3, p4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne p2, v3, :cond_91

    move v3, v4

    goto :goto_92

    :cond_91
    move v3, v2

    .line 235
    :goto_92
    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v3, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 237
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 238
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_78

    :cond_b1
    return-void
.end method

.method public final newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 246
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move p1, v0

    .line 247
    :goto_f
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge p1, v1, :cond_20

    .line 248
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_20
    return v0
.end method

.method public final notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .registers 5

    const-string v0, "MotionEventInjector"

    .line 356
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_23

    :catch_6
    const-string p0, "Null pointer exception in notifyService"

    .line 363
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_c
    move-exception p1

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending motion event injection status to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method public final obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v5, p7

    .line 475
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    array-length v1, v1

    if-ge v1, v5, :cond_1f

    .line 476
    :cond_c
    new-array v1, v5, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v1, v2

    :goto_11
    if-ge v1, v5, :cond_1f

    .line 478
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 481
    :cond_1f
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_26

    array-length v1, v1

    if-ge v1, v5, :cond_39

    .line 482
    :cond_26
    new-array v1, v5, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    move v1, v2

    :goto_2b
    if-ge v1, v5, :cond_39

    .line 484
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_39
    move v1, v2

    :goto_3a
    if-ge v1, v5, :cond_7c

    .line 488
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v6, :cond_56

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v3

    .line 491
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v6, p6, v1

    iget v6, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    :cond_56
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 494
    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 495
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 496
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 497
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 498
    aget-object v4, p6, v1

    iget v6, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 499
    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 501
    :cond_7c
    sget-object v6, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x1002

    const/4 v15, 0x0

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p7

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionEventInjector.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_32
    const/16 v0, 0x2002

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/16 v1, 0x1002

    .line 131
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_54

    return-void

    .line 134
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/high16 v0, 0x20000

    or-int/2addr p3, v0

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final prepareToContinueOldGesture(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_d7

    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_11

    goto/16 :goto_d7

    .line 267
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move v0, v1

    move v2, v0

    .line 270
    :goto_19
    iget v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v3, :cond_c2

    .line 271
    iget-object v3, p1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v0

    .line 272
    iget-boolean v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v4, :cond_bc

    .line 273
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    const/4 v6, -0x1

    .line 274
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const-string v5, "MotionEventInjector"

    if-ne v4, v6, :cond_47

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 280
    :cond_47
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v7, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v4, v6, v7}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v4

    if-gez v4, :cond_7d

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due continued gesture id of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not matching any previous strokes in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 286
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 289
    :cond_7d
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v4

    iget-boolean v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_9b

    iget v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v8, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9b

    iget v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v8, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_96

    goto :goto_9b

    .line 298
    :cond_96
    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    goto :goto_bc

    .line 292
    :cond_9b
    :goto_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t continue gesture due to points mismatch between "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_bc
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    :cond_c2
    move p1, v1

    .line 303
    :goto_c3
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge p1, v0, :cond_d4

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v0, :cond_d1

    add-int/lit8 v2, v2, -0x1

    :cond_d1
    add-int/lit8 p1, p1, 0x1

    goto :goto_c3

    :cond_d4
    if-nez v2, :cond_d7

    const/4 v1, 0x1

    :cond_d7
    :goto_d7
    return v1
.end method

.method public final sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 313
    invoke-virtual {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_1a

    .line 316
    iget-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_28

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_33

    .line 320
    :cond_28
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_33
    return-void
.end method
