.class public Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field public static final MAX_TRACKED_POINTERS:I = 0x20

.field public static final SWIPE_FROM_BOTTOM:I = 0x2

.field public static final SWIPE_FROM_LEFT:I = 0x4

.field public static final SWIPE_FROM_RIGHT:I = 0x3

.field public static final SWIPE_FROM_TOP:I = 0x1

.field public static final SWIPE_NONE:I = 0x0

.field public static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field public static final TAG:Ljava/lang/String; = "SystemGestures"

.field public static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field public final MOUSE_HOVER_THRESHOLD_PX:I

.field public final mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtEdge:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public static synthetic $r8$lambda$yisOVM8SBJpDDf9HPiW7GYIEn8Q(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->lambda$systemReady$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmLastFlingTime(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    .line 72
    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->MOUSE_HOVER_THRESHOLD_PX:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 82
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v0, [F

    .line 83
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v0, [F

    .line 84
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v0, v0, [J

    .line 85
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    const-string v0, "context"

    .line 106
    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    const-string p1, "callbacks"

    .line 108
    invoke-static {p1, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_3

    return-object p1

    .line 165
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$systemReady$0()V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 182
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_27

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create GestureDetector, display removed:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemGestures"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 188
    :cond_27
    new-instance v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final captureDown(Landroid/view/MotionEvent;I)V
    .registers 6

    .line 299
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    .line 305
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, v0

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    aput-wide p1, p0, v0

    :cond_23
    return-void
.end method

.method public currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget p0, p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public final detectSwipe(IJFF)I
    .registers 12

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 356
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 357
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr p2, v2

    .line 360
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    const-wide/16 v3, 0x1f4

    if-gtz v2, :cond_26

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p5, v2

    if-lez v2, :cond_26

    cmp-long v2, p2, v3

    if-gez v2, :cond_26

    const/4 p0, 0x1

    return p0

    .line 365
    :cond_26
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3e

    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float p5, p5, v1

    if-gez p5, :cond_3e

    cmp-long p5, p2, v3

    if-gez p5, :cond_3e

    const/4 p0, 0x2

    return p0

    .line 370
    :cond_3e
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, v1

    int-to-float p5, p5

    cmpl-float p5, v0, p5

    if-ltz p5, :cond_57

    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p5, p5

    sub-float p5, v0, p5

    cmpg-float p5, p4, p5

    if-gez p5, :cond_57

    cmp-long p5, p2, v3

    if-gez p5, :cond_57

    const/4 p0, 0x3

    return p0

    .line 375
    :cond_57
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6c

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p4, v0

    if-lez p0, :cond_6c

    cmp-long p0, p2, v3

    if-gez p0, :cond_6c

    const/4 p0, 0x4

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method public final detectSwipe(Landroid/view/MotionEvent;)I
    .registers 14

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_4a

    .line 333
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 334
    invoke-virtual {p0, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    move v11, v2

    :goto_18
    if-ge v11, v0, :cond_32

    .line 337
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    .line 338
    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    .line 339
    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    move-object v5, p0

    move v6, v4

    .line 340
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    if-eqz v5, :cond_2f

    return v5

    :cond_2f
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 345
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v4

    if-eqz v4, :cond_47

    return v4

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4a
    return v2
.end method

.method public final detectSystemGestureForDex(Landroid/view/MotionEvent;)V
    .registers 6

    .line 400
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_16

    .line 401
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 402
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto :goto_50

    .line 403
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    add-int/lit8 v3, v3, -0x16

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2f

    .line 404
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 405
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto :goto_50

    .line 406
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_50

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_50

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    add-int/lit8 v0, v0, -0x16

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_50

    .line 408
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    :cond_50
    :goto_50
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SystemGestures"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mDisplayCutoutTouchableRegionSize="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    iget p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSwipeStartThreshold="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSwipeDistanceThreshold="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final findIndex(I)I
    .registers 5

    const/4 v0, 0x0

    .line 317
    :goto_1
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_21

    if-ne p1, v2, :cond_17

    goto :goto_21

    .line 325
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    add-int/lit8 v2, v2, -0x1

    :cond_21
    :goto_21
    return v2
.end method

.method public onConfigurationChanged()V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504d8

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 132
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_8e

    const v3, 0x105014a

    .line 138
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 140
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    .line 141
    aget-object v1, v0, v2

    if-eqz v1, :cond_4c

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 142
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    :cond_4c
    const/4 v1, 0x1

    .line 145
    aget-object v1, v0, v1

    if-eqz v1, :cond_62

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 146
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    :cond_62
    const/4 v1, 0x2

    .line 149
    aget-object v1, v0, v1

    if-eqz v1, :cond_78

    .line 150
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v1, v4

    .line 150
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_78
    const/4 v1, 0x3

    .line 153
    aget-object v0, v0, v1

    if-eqz v0, :cond_8e

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v0, p0

    .line 154
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_8e
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 113
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 114
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    :cond_f
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eqz v0, :cond_1e

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_1e

    .line 213
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    .line 219
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e2

    if-eq v0, v2, :cond_d8

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_aa

    if-eq v0, v3, :cond_d8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_8e

    const/4 v3, 0x7

    if-eq v0, v3, :cond_36

    goto/16 :goto_fb

    :cond_36
    const/16 v0, 0x2002

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 274
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_54

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_54

    .line 275
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 276
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fb

    .line 277
    :cond_54
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_6d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6d

    .line 278
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 279
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fb

    .line 280
    :cond_6d
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_fb

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_fb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_fb

    .line 282
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 283
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_fb

    .line 232
    :cond_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 233
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_fb

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_a0

    move v1, v2

    :cond_a0
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_fb

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_fb

    .line 242
    :cond_aa
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_fb

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_b5

    move v1, v2

    .line 244
    :cond_b5
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne p1, v2, :cond_bf

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_fb

    :cond_bf
    if-ne p1, v4, :cond_c7

    .line 250
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_fb

    :cond_c7
    if-ne p1, v3, :cond_cf

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_fb

    :cond_cf
    const/4 v0, 0x4

    if-ne p1, v0, :cond_fb

    .line 256
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    goto :goto_fb

    .line 289
    :cond_d8
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 291
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto :goto_fb

    .line 221
    :cond_e2
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 223
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 224
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 225
    iget-boolean p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz p1, :cond_f6

    .line 226
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 227
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 229
    :cond_f6
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public setDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_1b

    .line 195
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    :cond_1b
    return-void
.end method
