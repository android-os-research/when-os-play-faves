.class public Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field public static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field public static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field public static final CLICK_LOCATION_NONE:I = 0x0

.field public static final LOG_TAG:Ljava/lang/String; = "EventDispatcher"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mContext:Landroid/content/Context;

.field public mLongPressingPointerDeltaX:I

.field public mLongPressingPointerDeltaY:I

.field public mLongPressingPointerId:I

.field public mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 6

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 73
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 74
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    .line 403
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 405
    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    return-void
.end method

.method public clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 410
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 411
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 412
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v4

    if-nez v4, :cond_1b

    const-string v0, "EventDispatcher"

    const-string v1, "Unable to compute click location."

    .line 414
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 v5, 0x1

    new-array v6, v5, [Landroid/view/MotionEvent$PointerProperties;

    move-object v12, v6

    .line 421
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/16 v23, 0x0

    aput-object v7, v6, v23

    .line 422
    invoke-virtual {v1, v2, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-array v2, v5, [Landroid/view/MotionEvent$PointerCoords;

    move-object v13, v2

    .line 424
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v2, v23

    .line 425
    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 426
    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    const/16 v19, 0x0

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 428
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-ne v4, v5, :cond_6c

    goto :goto_6e

    :cond_6c
    move/from16 v5, v23

    .line 445
    :goto_6e
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V

    .line 446
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final computeClickLocation(Landroid/graphics/Point;)I
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_4e

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 452
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 453
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 454
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 455
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 456
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 457
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 458
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastTouchedWindowId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v3

    if-ne v0, v3, :cond_4e

    .line 459
    :cond_44
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_4d

    return v1

    :cond_4d
    return v2

    .line 466
    :cond_4e
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_57

    return v1

    :cond_57
    return v2
.end method

.method public final computeInjectionAction(II)I
    .registers 4

    const/4 v0, 0x5

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_17

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    return p1

    .line 249
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    return p1

    :cond_13
    shl-int/lit8 p0, p2, 0x8

    or-int/2addr p0, v0

    return p0

    .line 241
    :cond_17
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointerDownCount()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0
.end method

.method public final computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 19

    move-object/from16 v0, p0

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 320
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    if-eq v5, v1, :cond_1e

    const-string v0, "EventDispatcher"

    const-string v1, "The pointer count doesn\'t match the received count."

    .line 321
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1e
    new-array v7, v5, [Landroid/view/MotionEvent$PointerCoords;

    .line 325
    new-array v6, v5, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v5, :cond_59

    move-object/from16 v2, p1

    .line 328
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 329
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 330
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v8}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v8

    .line 331
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v7, v1

    .line 332
    iput v4, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 333
    iput v8, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 334
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v6, v1

    .line 335
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v3, 0x1

    .line 336
    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_59
    move-object/from16 v2, p1

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move-wide v2, v3

    move v4, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    .line 339
    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z
    .registers 7

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    if-eqz p1, :cond_2f

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 392
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 393
    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    .line 394
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    .line 395
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v2
.end method

.method public final offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 26

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    return-object v0

    :cond_b
    move-object/from16 v3, p0

    .line 199
    iget v3, v3, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 201
    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    .line 202
    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_3f

    .line 204
    aget-object v6, v11, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 205
    aget-object v6, v12, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v5, v3, :cond_3c

    .line 207
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 208
    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 212
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 211
    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 155
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 166
    :cond_1c
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedAccessibilityEvent(I)V

    return-void
.end method

.method public final sendActionDownAndUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;IZ)V
    .registers 13

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 484
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, v0

    move v7, p3

    .line 485
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 486
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v4, 0x1

    .line 487
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void
.end method

.method public sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 14

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_2d

    .line 273
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 275
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_2a

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    .line 277
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v7

    .line 278
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 281
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v8

    move-object v5, p0

    move-object v6, p1

    move v9, v3

    move v10, p2

    .line 278
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2d
    return-void
.end method

.method public sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V
    .registers 14

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionDownEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    const/4 v8, 0x0

    move v1, v8

    move v9, v1

    :goto_b
    if-ge v9, v0, :cond_33

    .line 303
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 305
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int v10, v1, v2

    .line 307
    invoke-virtual {p0, v8, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v3

    .line 308
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 311
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    move-object v1, p0

    move-object v2, v7

    move v5, v10

    move v6, p2

    .line 308
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    move v1, v10

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_33
    return-void
.end method

.method public sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V
    .registers 9

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v0, "EventDispatcher"

    const/4 v1, -0x1

    if-ne p4, v1, :cond_a

    move-object p4, p1

    goto :goto_e

    .line 103
    :cond_a
    :try_start_a
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p4
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_4a

    :goto_e
    if-nez p2, :cond_18

    .line 110
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_21

    .line 112
    :cond_18
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 120
    :goto_21
    iget p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz p2, :cond_2f

    .line 121
    iget p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int p2, p2

    iget v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-virtual {p0, p4, p2, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p4

    :cond_2f
    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p2, p5

    .line 135
    iget-object p5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz p5, :cond_3a

    .line 136
    invoke-interface {p5, p4, p3, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_3f

    :cond_3a
    const-string p2, "Error sending event: no receiver specified."

    .line 138
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_3f
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/gestures/TouchState;->onInjectedMotionEvent(Landroid/view/MotionEvent;)V

    if-eq p4, p1, :cond_49

    .line 143
    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    :cond_49
    return-void

    :catch_4a
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 13

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_31

    .line 372
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 374
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3, v9}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_2e

    :cond_18
    const/4 v3, 0x6

    .line 377
    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v5

    .line 378
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 379
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move v7, v0

    move v8, p2

    .line 378
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    const/4 v3, 0x1

    shl-int/2addr v3, v9

    not-int v3, v3

    and-int/2addr v0, v3

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_31
    return-void
.end method

.method public setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDown pointers #"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getInjectedPointersDown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_22
    const/16 v2, 0x20

    if-ge v1, v2, :cond_39

    .line 177
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/gestures/TouchState;->isInjectedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_39
    const-string p0, "]"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n========================="

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
