.class public Lcom/android/server/accessibility/gestures/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureManifold$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DELAY_FOR_INTERACTION_END:I = 0x32

.field public static final EDGE_SWIPE_HEIGHT_CM:F = 0.25f

.field public static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field public static final LOGGING_FLAGS:J = 0x3000L

.field public static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field public static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field public static SEC_DEBUG:Z = false


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mDetermineUserIntentTimeout:I

.field public final mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

.field public mDisplayId:I

.field public final mDoubleTapSlop:I

.field public mDraggingPointerId:I

.field public final mEdgeSwipeHeightPixels:F

.field public final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

.field public mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

.field public final mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

.field public final mHandler:Landroid/os/Handler;

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field public final mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

.field public final mTouchSlop:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDetermineUserIntentTimeout(Lcom/android/server/accessibility/gestures/TouchExplorer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDispatcher(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/GestureManifold;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceivedPointerTracker(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendTouchExplorationEndDelayed(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendTouchInteractionEndDelayed(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchGesture(Lcom/android/server/accessibility/gestures/TouchExplorer;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .registers 6

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, -0x1

    .line 170
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 200
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    .line 202
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 203
    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v1, v0, p2}, Lcom/android/server/accessibility/gestures/TouchState;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 204
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 205
    new-instance v0, Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 206
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 207
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    .line 208
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 210
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    sget v0, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr p2, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    .line 211
    iput-object p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed-IA;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 213
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 214
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 215
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v1, 0x400

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 218
    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v1, 0x200000

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    if-nez p3, :cond_90

    .line 222
    new-instance p2, Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    goto :goto_92

    .line 224
    :cond_90
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 226
    :goto_92
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 227
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public static checkForMalformedEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 1523
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ltz v0, :cond_79

    const/4 v0, 0x0

    .line 1526
    :goto_7
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 1528
    :try_start_d
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1529
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1530
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1531
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_30

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1532
    :cond_30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid coordinates: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_54} :catch_54

    :catch_54
    move-exception v1

    .line 1536
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered exception getting details of pointer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_78
    return-void

    .line 1524
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointer count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public adjustDetermineUserIntentTimeoutWithDelay()V
    .registers 3

    .line 238
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->setDelay(I)V

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->setDelay(I)V

    return-void
.end method

.method public final allPointersDownOnBottomEdge(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    .line 1297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 1298
    :goto_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 1299
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1300
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v5, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v4

    long-to-float v5, v0

    .line 1301
    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_28

    return v2

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public final clear()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_d

    const/high16 v1, 0x2000000

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_d
    return-void
.end method

.method public final clear(Landroid/view/MotionEvent;I)V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :cond_b
    const/4 v0, -0x1

    .line 271
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 275
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 276
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 277
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 278
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 279
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 281
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 283
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clear()V

    .line 285
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 286
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void
.end method

.method public clearEvents(I)V
    .registers 3

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 247
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    .line 249
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1258
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v2

    if-nez v2, :cond_7a

    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7a

    if-nez v1, :cond_14

    goto :goto_7a

    .line 1263
    :cond_14
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 1264
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iget v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1265
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v4

    move-wide v6, v4

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/view/MotionEvent$PointerCoords;

    move-object v13, v11

    .line 1267
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v14, 0x0

    aput-object v12, v11, v14

    .line 1268
    iput v2, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1269
    iput v3, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    new-array v2, v10, [Landroid/view/MotionEvent$PointerProperties;

    move-object v12, v2

    .line 1271
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v14

    .line 1272
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iput v0, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1273
    iput v10, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1282
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 1287
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 1288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 1289
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v21

    .line 1290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 1275
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1291
    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    return-object v0

    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V
    .registers 8

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    .line 1211
    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void

    .line 1214
    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq v0, v1, :cond_1a

    .line 1216
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1217
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_1a

    return-void

    :cond_1a
    const/4 v0, 0x0

    .line 1222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1223
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1224
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v3, 0x1

    .line 1225
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1226
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1227
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1228
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v1

    .line 1229
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_41

    goto :goto_42

    :cond_41
    move v0, p1

    .line 1230
    :goto_42
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .registers 2

    .line 1774
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    return-void
.end method

.method public final endGestureDetection(Z)V
    .registers 4

    .line 1127
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1130
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    if-eqz p1, :cond_15

    .line 1133
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 1136
    :cond_15
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    return-void
.end method

.method public final getDistanceToClosestEdge(FF)F
    .registers 7

    .line 1234
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-long v0, v0

    .line 1235
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v2, p0

    long-to-float p0, v0

    sub-float/2addr p0, p1

    cmpg-float v0, p1, p0

    if-gez v0, :cond_21

    goto :goto_22

    :cond_21
    move p1, p0

    :goto_22
    cmpl-float p0, p1, p2

    if-lez p0, :cond_27

    move p1, p2

    :cond_27
    long-to-float p0, v2

    sub-float/2addr p0, p2

    cmpl-float p2, p1, p0

    if-lez p2, :cond_2e

    move p1, p0

    :cond_2e
    return p1
.end method

.method public getState()Lcom/android/server/accessibility/gestures/TouchState;
    .registers 1

    .line 1312
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-object p0
.end method

.method public final handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11

    .line 595
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 599
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 601
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 604
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 605
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 607
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 608
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 613
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 615
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 617
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPointerIdBits(I)V

    .line 618
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPolicyFlags(I)V

    .line 619
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_5b

    .line 621
    :cond_50
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V

    goto :goto_5b

    .line 625
    :cond_56
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 627
    :goto_5b
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 628
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 629
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 630
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 635
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 636
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 637
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 638
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, -0x1

    move-object v4, p2

    move v6, p3

    .line 637
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 639
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    goto :goto_b6

    .line 640
    :cond_99
    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 640
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 643
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    goto :goto_b6

    .line 647
    :cond_b1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 649
    :cond_b6
    :goto_b6
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 650
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_c3
    return-void
.end method

.method public final handleActionMoveStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12

    .line 912
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v1, 0x1

    shl-int v6, v1, v0

    .line 914
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v1, :cond_87

    const/4 v1, 0x2

    if-eq v3, v1, :cond_39

    .line 954
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    .line 958
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 961
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 962
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_35

    .line 964
    :cond_32
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 966
    :goto_35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_93

    .line 923
    :cond_39
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 924
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v1

    if-nez v1, :cond_4a

    return-void

    .line 927
    :cond_4a
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 930
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 931
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 938
    :cond_5c
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 939
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v1

    .line 940
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 941
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 942
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v0

    .line 943
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v1, v1

    float-to-double v3, v0

    .line 944
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 945
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_83

    .line 947
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_93

    .line 950
    :cond_83
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_93

    .line 918
    :cond_87
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 919
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v4, 0x7

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :goto_93
    return-void
.end method

.method public final handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move/from16 v8, p3

    .line 739
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v2

    .line 740
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 742
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 743
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 744
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    .line 747
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19f

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v3, v5, :cond_a6

    .line 834
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 835
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1ac

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->allPointersDownOnBottomEdge(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 843
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 844
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 848
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 849
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 851
    :cond_60
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 853
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    .line 855
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 856
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1ac

    .line 859
    :cond_79
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointersWithOriginalDown(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1ac

    .line 867
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 868
    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 872
    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 873
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 875
    :cond_96
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 876
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 877
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, v1, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1ac

    .line 759
    :cond_a6
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v3

    if-eqz v3, :cond_b7

    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 760
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v3

    if-nez v3, :cond_b7

    return-void

    .line 764
    :cond_b7
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 765
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 766
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v3

    if-eqz v3, :cond_125

    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 767
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v3

    if-eqz v3, :cond_125

    if-gez v2, :cond_d4

    return-void

    :cond_d4
    const/4 v2, 0x0

    .line 772
    :goto_d5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_125

    .line 773
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 774
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v9, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v9

    if-nez v9, :cond_fd

    .line 776
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid pointer id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TouchExplorer"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_fd
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 779
    invoke-virtual {v9, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v9

    .line 780
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    .line 781
    iget-object v10, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 782
    invoke-virtual {v10, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 783
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v3, v10

    float-to-double v9, v9

    float-to-double v11, v3

    .line 784
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    .line 785
    iget v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    mul-int/2addr v3, v5

    int-to-double v11, v3

    cmpg-double v3, v9, v11

    if-gez v3, :cond_122

    return-void

    :cond_122
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 793
    :cond_125
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 794
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 797
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 798
    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 802
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 803
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 805
    :cond_145
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 806
    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v10, v4, v1

    .line 807
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 808
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_16d

    .line 810
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v10

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 812
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x2

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_178

    .line 815
    :cond_16d
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x0

    move-object v2, v9

    move-object v4, p2

    move v5, v10

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 818
    :goto_178
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDragging()V

    goto :goto_1ac

    .line 821
    :cond_17e
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 822
    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 826
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 829
    :cond_194
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 830
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, v9, v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1ac

    .line 751
    :cond_19f
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 755
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_1ac
    :goto_1ac
    return-void
.end method

.method public final handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 721
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 722
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 723
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_16

    .line 726
    :cond_13
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 728
    :goto_16
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 729
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_23
    return-void
.end method

.method public final handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 888
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 891
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 894
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 896
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V

    goto :goto_36

    .line 899
    :cond_33
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 901
    :goto_36
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p1

    if-nez p1, :cond_43

    .line 902
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_43
    return-void
.end method

.method public final handleMotionEventStateClear(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_a

    .line 582
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_a
    return-void
.end method

.method public final handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 18

    move-object v0, p0

    .line 1100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    .line 1120
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, -0x1

    move-object v4, p1

    move-object/from16 v6, p2

    move/from16 v8, p3

    .line 1120
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_3a

    .line 1109
    :cond_1a
    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 1110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v12, -0x1

    move-object v9, p1

    move-object/from16 v11, p2

    move/from16 v13, p3

    .line 1109
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1113
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1114
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clear()V

    .line 1115
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :goto_3a
    return-void

    :cond_3b
    const-string v1, "TouchExplorer"

    const-string v2, "Delegating state can only be reached if there is at least one pointer down!"

    .line 1102
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    move/from16 v2, p3

    .line 1104
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 15

    .line 979
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isMultiFingerGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 980
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isTwoFingerPassthroughEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 986
    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const-string v2, "TouchExplorer"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_44

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 991
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iput v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    goto :goto_48

    .line 996
    :cond_44
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v3, v0

    :goto_48
    move v9, v0

    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_131

    if-eq v0, v3, :cond_10d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_90

    const/4 v1, 0x5

    if-eq v0, v1, :cond_69

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5c

    goto/16 :goto_130

    .line 1072
    :cond_5c
    iput v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1074
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto/16 :goto_130

    .line 1006
    :cond_69
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1007
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    .line 1012
    :cond_77
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1013
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq v0, v4, :cond_89

    .line 1014
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1017
    :cond_89
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_130

    .line 1020
    :cond_90
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne v0, v4, :cond_96

    goto/16 :goto_130

    .line 1023
    :cond_96
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1025
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 1027
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x2

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return-void

    .line 1032
    :cond_b0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v3, :cond_130

    if-eq v0, v1, :cond_e0

    .line 1057
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 1058
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    .line 1061
    :cond_c6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1062
    iput v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1063
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1065
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1068
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_130

    .line 1037
    :cond_e0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    .line 1040
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x2

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_130

    .line 1045
    :cond_f3
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1046
    iput v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1048
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1050
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1053
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_130

    .line 1078
    :cond_10d
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne v0, v1, :cond_124

    .line 1079
    iput v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1081
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1084
    :cond_124
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1086
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_130
    :goto_130
    return-void

    :cond_131
    const-string p2, "Dragging state can be reached only if two pointers are already down"

    .line 1000
    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    goto :goto_19

    .line 700
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_19

    .line 703
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_19

    .line 706
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_19
    return-void
.end method

.method public final handleMotionEventStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    const/4 p1, 0x6

    if-eq v0, p1, :cond_13

    goto :goto_35

    .line 676
    :cond_13
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 677
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    goto :goto_35

    .line 670
    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_35

    .line 673
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_35

    .line 681
    :cond_29
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_35

    .line 666
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 667
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public final isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v0, 0x0

    .line 1190
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v1, 0x1

    .line 1192
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1195
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result p1

    .line 1196
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v2

    .line 1197
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v3

    .line 1198
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v4

    const v9, 0x3f067b80

    move v1, p1

    .line 1200
    invoke-static/range {v1 .. v9}, Lcom/android/server/accessibility/gestures/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result p0

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .registers 1

    .line 1359
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->isSendMotionEventsEnabled()Z

    move-result p0

    return p0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TouchExplorer.onAccessibilityEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 360
    :cond_2a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_35

    .line 363
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendsPendingA11yEventsIfNeeded()V

    :cond_35
    const v1, 0x8000

    if-ne v0, v1, :cond_63

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->getGestures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 369
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureId()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_44

    const-string v2, "TouchExplorer"

    const-string v3, "clear GESTURE_DOUBLE_TAP"

    .line 370
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_44

    .line 376
    :cond_63
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 377
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear()V

    return-void
.end method

.method public onDoubleTap()V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v2

    .line 473
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 9

    .line 429
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 430
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

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

    const-string v4, "TouchExplorer.onDoubleTap"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 433
    :cond_3a
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 435
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 436
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 438
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 442
    invoke-virtual {v3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 445
    :cond_61
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 446
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 450
    :cond_6e
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 451
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 453
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_95

    const-string v0, "TouchExplorer"

    const-string v2, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    .line 455
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_95

    if-eqz p2, :cond_95

    .line 457
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->clickWithTouchEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_95
    return v1
.end method

.method public onDoubleTapAndHold()V
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 483
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v2

    .line 484
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 410
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";policyFlags="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "TouchExplorer.onDoubleTapAndHold"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 413
    :cond_3a
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/accessibility/gestures/EventDispatcher;->longPressWithTouchEvents(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 414
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 416
    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    const/16 p2, 0x12

    iget p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 420
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 423
    :cond_5d
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    :cond_62
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 12

    .line 535
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 536
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";policyFlags="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "TouchExplorer.onGestureCancelled"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 539
    :cond_3a
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4f

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_4b

    move v0, v1

    :cond_4b
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->endGestureDetection(Z)V

    return v1

    .line 542
    :cond_4f
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result p2

    if-eqz p2, :cond_85

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_85

    .line 545
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p2

    shl-int v6, v1, p2

    .line 550
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 551
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 552
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 553
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v4, 0x7

    move-object v3, p1

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    return v1

    .line 562
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isSendMotionEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 564
    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 568
    invoke-virtual {p3}, Lcom/android/server/accessibility/gestures/GestureManifold;->getMotionEvents()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_9b
    return v0
.end method

.method public onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .registers 11

    .line 510
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 511
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TouchExplorer.onGestureCompleted"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 518
    :cond_2a
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_55

    .line 519
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    const-string p1, "TouchExplorer"

    const-string/jumbo v0, "stop talkback by GESTURE_TO_STOP_TALKBACK"

    .line 520
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v4, "ASTF"

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 522
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenReaderEnabled(Z)V

    :cond_54
    return v2

    .line 527
    :cond_55
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->endGestureDetection(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return v2
.end method

.method public onGestureStarted()Z
    .registers 5

    .line 489
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 490
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "TouchExplorer.onGestureStarted"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 499
    :cond_19
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 500
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 501
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 504
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    const-string v0, "TouchExplorer"

    .line 291
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    const-wide/16 v2, 0x3000

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 292
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";rawEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TouchExplorer.onMotionEvent"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_3c
    const/16 v1, 0x2002

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_12b

    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_4e

    goto/16 :goto_12b

    .line 303
    :cond_4e
    :try_start_4e
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V

    .line 304
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_54} :catch_111

    .line 309
    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->SEC_DEBUG:Z

    if-eqz v1, :cond_81

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", policyFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_81
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchState;->onReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->shouldPerformGestureDetection(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 317
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureManifold;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_95

    return-void

    .line 323
    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a0

    .line 324
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    .line 330
    :cond_a0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateClear(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_110

    .line 332
    :cond_ac
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_110

    .line 334
    :cond_b8
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_110

    .line 336
    :cond_c4
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 337
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_110

    .line 338
    :cond_d0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_110

    .line 340
    :cond_dc
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 344
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 345
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result p1

    if-eqz p1, :cond_110

    .line 346
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    goto :goto_110

    .line 349
    :cond_f7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_110
    :goto_110
    return-void

    :catch_111
    move-exception p0

    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring malformed event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 299
    :cond_12b
    :goto_12b
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public requestDelegating()V
    .registers 4

    .line 1472
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1473
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1474
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1475
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->forceSendAndRemove()V

    .line 1477
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1478
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1481
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    const-string v1, "TouchExplorer"

    if-nez v0, :cond_53

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Trying to delegate from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1483
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1487
    :cond_53
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->startDelegating()V

    .line 1488
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_66

    const-string p0, "Unable to start delegating: unable to get last received event."

    .line 1490
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1493
    :cond_66
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v1

    .line 1494
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    :cond_71
    return-void
.end method

.method public requestDragging(I)V
    .registers 12

    .line 1423
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "TouchExplorer"

    if-ltz p1, :cond_b8

    const/16 v1, 0x20

    if-gt p1, v1, :cond_b8

    .line 1424
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 1425
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_b8

    .line 1429
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1430
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1431
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->forceSendAndRemove()V

    .line 1433
    :cond_2f
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1434
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1437
    :cond_3c
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v1

    if-nez v1, :cond_63

    .line 1439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Trying to drag from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1439
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1443
    :cond_63
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    .line 1447
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 1448
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedRawEvent()Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz v2, :cond_b2

    if-nez p1, :cond_76

    goto :goto_b2

    .line 1453
    :cond_76
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v0

    const/4 v1, 0x1

    .line 1454
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    shl-int v9, v1, v3

    .line 1455
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 1456
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1457
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->startDragging()V

    if-eqz v4, :cond_a8

    .line 1459
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v5, 0x0

    move-object v6, p1

    move v7, v9

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x2

    move-object v4, p1

    move v5, v9

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_cc

    .line 1464
    :cond_a8
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v3, 0x0

    move-object v4, p1

    move v5, v9

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    goto :goto_cc

    :cond_b2
    :goto_b2
    const-string p0, "Unable to start dragging: unable to get last event."

    .line 1450
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1426
    :cond_b8
    :goto_b8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to drag with invalid pointer: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    :goto_cc
    return-void
.end method

.method public requestTouchExploration()V
    .registers 4

    .line 1393
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchInteracting()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1395
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    .line 1398
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_2d

    const/4 v0, 0x0

    .line 1401
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    :cond_2d
    if-ne v0, v1, :cond_37

    const-string p0, "TouchExplorer"

    const-string v0, "Unable to find a valid pointer for touch exploration."

    .line 1405
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 1409
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedPolicyFlags()I

    move-result v1

    .line 1410
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPointerIdBits(I)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->setPolicyFlags(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    .line 1413
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->-$$Nest$mclear(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v0

    if-nez v0, :cond_5f

    .line 1416
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :cond_5f
    return-void
.end method

.method public final sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 9

    .line 1147
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1148
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2f

    .line 1149
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1150
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1151
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1153
    :cond_21
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v3, 0xa

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    move v6, p1

    .line 1153
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :cond_2f
    return-void
.end method

.method public final sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 9

    .line 1169
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1170
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_22

    .line 1171
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1172
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v3, 0x9

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    move v6, p1

    .line 1172
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    :cond_22
    return-void
.end method

.method public final sendsPendingA11yEventsIfNeeded()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->-$$Nest$misPending(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 395
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 396
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 401
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 402
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 403
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_31
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V
    .registers 2

    .line 1346
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setMultiFingerGesturesEnabled(Z)V
    .registers 2

    .line 1334
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setMultiFingerGesturesEnabled(Z)V

    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 3

    .line 1317
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->setReceiver(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 1318
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method

.method public setSecDebug(Z)V
    .registers 2

    .line 232
    sput-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->SEC_DEBUG:Z

    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .registers 2

    .line 1355
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setSendMotionEventsEnabled(Z)V

    return-void
.end method

.method public setServiceDetectsGestures(Z)V
    .registers 2

    .line 1364
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setServiceDetectsGestures(Z)V

    return-void
.end method

.method public setServiceHandlesDoubleTap(Z)V
    .registers 2

    .line 1326
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setServiceHandlesDoubleTap(Z)V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V
    .registers 2

    .line 1350
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setTwoFingerPassthroughEnabled(Z)V
    .registers 2

    .line 1342
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->setTwoFingerPassthroughEnabled(Z)V

    return-void
.end method

.method public final shouldPerformGestureDetection(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1368
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isServiceDetectingGestures()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1371
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDelegating()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3e

    .line 1374
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1377
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 1378
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3c

    :cond_3b
    return v1

    :cond_3c
    const/4 p0, 0x1

    return p0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchExplorer { mTouchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetermineUserIntentTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDraggingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
