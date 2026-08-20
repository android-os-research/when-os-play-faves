.class public Lcom/android/server/accessibility/gestures/MultiFingerSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiFingerSwipe.java"


# static fields
.field public static final DOWN:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final MIN_CM_BETWEEN_SAMPLES:F = 0.25f

.field public static final RIGHT:I = 0x1

.field public static final UP:I = 0x2


# instance fields
.field public mBase:[Landroid/graphics/PointF;

.field public mCurrentFingerCount:I

.field public mDirection:I

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public mPointerIds:[I

.field public mPreviousGesturePoint:[Landroid/graphics/PointF;

.field public final mStrokeBuffers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetFingerCount:I

.field public mTargetFingerCountReached:Z

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 8

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    const/4 p4, 0x0

    .line 62
    iput-boolean p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 81
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    .line 82
    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    .line 83
    new-array p4, p2, [Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 84
    new-array p4, p2, [Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    .line 85
    new-array p2, p2, [Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 86
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 89
    iget p3, p2, Landroid/util/DisplayMetrics;->xdpi:F

    sget p4, Lcom/android/server/accessibility/gestures/GestureUtils;->CM_PER_INCH:F

    div-float/2addr p3, p4

    .line 90
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p2, p4

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float/2addr p3, p4

    .line 91
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr p2, p4

    .line 92
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 93
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->clear()V

    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, "Unknown Direction"

    return-object p0

    :cond_e
    const-string p0, "down"

    return-object p0

    :cond_11
    const-string/jumbo p0, "up"

    return-object p0

    :cond_15
    const-string/jumbo p0, "right"

    return-object p0

    :cond_19
    const-string/jumbo p0, "left"

    return-object p0
.end method

.method public static toDirection(FF)I
    .registers 4

    .line 413
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    cmpg-float p0, p0, v1

    if-gez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    const/4 p0, 0x1

    :goto_14
    return p0

    :cond_15
    cmpg-float p0, p1, v1

    if-gez p0, :cond_1b

    const/4 p0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x3

    :goto_1c
    return p0
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 100
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 101
    :goto_5
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_53

    .line 102
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 103
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    if-nez v2, :cond_1b

    .line 104
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 106
    :cond_1b
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 107
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 108
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v3, v1, v0

    if-nez v3, :cond_32

    .line 109
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v0

    .line 111
    :cond_32
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 112
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 113
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v2, v1, v0

    if-nez v2, :cond_49

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 116
    :cond_49
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :cond_53
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .registers 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Swipe "

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->directionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 123
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-lez v0, :cond_8

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 127
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 128
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-gez v2, :cond_1e

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 136
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 141
    :cond_29
    aput v2, v0, v3

    .line 142
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v4, v0, v2

    if-ltz v4, :cond_66

    cmpg-float v2, v1, v2

    if-gez v2, :cond_55

    goto :goto_66

    .line 149
    :cond_55
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object p1, p1, v3

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 150
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 151
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p0, p0, v3

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 152
    iput v1, p0, Landroid/graphics/PointF;->y:F

    return-void

    .line 146
    :cond_66
    :goto_66
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 155
    :cond_6a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_2
    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v1, v2, :cond_f1

    .line 241
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    goto/16 :goto_ea

    .line 252
    :cond_f
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_17

    goto/16 :goto_ea

    .line 263
    :cond_17
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 264
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_ee

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2a

    goto/16 :goto_ee

    .line 269
    :cond_2a
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 270
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 271
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v3, v6

    .line 273
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v8, v2, v8

    .line 274
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    .line 272
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 278
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v8

    if-nez v8, :cond_ab

    .line 279
    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    iget v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTouchSlop:I

    mul-int/2addr v5, v4

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_72

    goto/16 :goto_ea

    .line 284
    :cond_72
    iget v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    if-eq v5, v4, :cond_7a

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 289
    :cond_7a
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-static {v3, v2}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v2

    .line 290
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v2, v3, :cond_90

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 295
    :cond_90
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    move v2, v0

    .line 296
    :goto_94
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v2, v3, :cond_ea

    .line 297
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 299
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ea

    .line 302
    iget-object v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v6, v6, v1

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v7, v3, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v2, v6

    invoke-static {v7, v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result v6

    .line 303
    iget v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq v6, v7, :cond_ca

    .line 304
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 307
    :cond_ca
    iget v6, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v4, v4, v6

    if-gez v4, :cond_d6

    iget v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_ea

    .line 309
    :cond_d6
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/graphics/PointF;->x:F

    .line 310
    iput v2, v4, Landroid/graphics/PointF;->y:F

    .line 311
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    :goto_ea
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 266
    :cond_ee
    :goto_ee
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_f1
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-le v0, v1, :cond_c

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 166
    :cond_c
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v0, v2, :cond_1c

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 171
    :cond_1c
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ne v0, v2, :cond_24

    .line 172
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    .line 174
    :cond_24
    invoke-static {p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-gez v2, :cond_32

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 181
    :cond_32
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    sub-int/2addr v3, v1

    .line 182
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 187
    :cond_40
    aput v2, v1, v3

    .line 188
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v4, v1, v2

    if-ltz v4, :cond_7d

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6c

    goto :goto_7d

    .line 195
    :cond_6c
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    aget-object p1, p1, v3

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 196
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 197
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p0, p0, v3

    iput v1, p0, Landroid/graphics/PointF;->x:F

    .line 198
    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void

    .line 192
    :cond_7d
    :goto_7d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 200
    :cond_81
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 207
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCountReached:Z

    if-nez v0, :cond_8

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 211
    :cond_8
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 212
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-gez v1, :cond_1c

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 219
    :cond_1c
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_28

    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 224
    :cond_28
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 225
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_6b

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3a

    goto :goto_6b

    .line 230
    :cond_3a
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 231
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 232
    iget p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float p1, p1, p3

    if-gez p1, :cond_5e

    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_6a

    .line 233
    :cond_5e
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object p0, p0, v1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    return-void

    .line 227
    :cond_6b
    :goto_6b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    .line 319
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mCurrentFingerCount:I

    .line 324
    invoke-static {p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 326
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPointerIds:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_22

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 331
    :cond_22
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 332
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_68

    cmpg-float v3, v0, v3

    if-gez v3, :cond_34

    goto :goto_68

    .line 337
    :cond_34
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 338
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mPreviousGesturePoint:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 339
    iget v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v3, v3, v5

    if-gez v3, :cond_58

    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_64

    .line 340
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v3, v1

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 334
    :cond_68
    :goto_68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    const/4 v0, 0x0

    .line 354
    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mTargetFingerCount:I

    if-ge v0, v1, :cond_2e

    .line 358
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1d

    .line 359
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->getGestureName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Too few points."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 363
    :cond_1d
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 369
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    const/4 p1, 0x0

    move p2, p1

    .line 387
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2e

    .line 388
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    add-int/lit8 p2, p2, 0x1

    .line 389
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 391
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 392
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p3

    .line 393
    invoke-static {v1, v0}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->toDirection(FF)I

    move-result p3

    .line 394
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mDirection:I

    if-eq p3, v0, :cond_5

    return p1

    :cond_2e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    const-string v1, ", mBase: "

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mBase:[Landroid/graphics/PointF;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesX:"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesX:F

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesY:"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;->mMinPixelsBetweenSamplesY:F

    .line 454
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 456
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
