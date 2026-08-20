.class public Lcom/android/server/accessibility/gestures/Swipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "Swipe.java"


# static fields
.field public static final ANGLE_THRESHOLD:F = 0.0f

.field public static final DOWN:I = 0x3

.field public static final GESTURE_CONFIRM_CM:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final MAX_TIME_TO_CONTINUE_SWIPE_MS:J = 0x15eL

.field public static final MAX_TIME_TO_START_SWIPE_MS:J = 0x96L

.field public static final MIN_CM_BETWEEN_SAMPLES:F = 0.25f

.field public static final RIGHT:I = 0x1

.field public static final UP:I = 0x2


# instance fields
.field public mBaseTime:J

.field public mBaseX:F

.field public mBaseY:F

.field public mDirections:[I

.field public final mGestureDetectionThresholdPixels:F

.field public final mMinPixelsBetweenSamplesX:F

.field public final mMinPixelsBetweenSamplesY:F

.field public mPreviousGestureX:F

.field public mPreviousGestureY:F

.field public final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 106
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 97
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 7

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 50
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0x64

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 115
    iput-object p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 117
    sget p3, Lcom/android/server/accessibility/gestures/GestureUtils;->MM_PER_CM:I

    int-to-float p3, p3

    const/4 p4, 0x5

    .line 118
    invoke-static {p4, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    .line 121
    iget p3, p2, Landroid/util/DisplayMetrics;->xdpi:F

    const p4, 0x40228f5c    # 2.54f

    div-float/2addr p3, p4

    .line 122
    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p2, p4

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float/2addr p3, p4

    .line 123
    iput p3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr p2, p4

    .line 124
    iput p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 125
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->clear()V

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

    .line 368
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
    .registers 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 131
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 132
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    const-wide/16 v1, 0x0

    .line 133
    iput-wide v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 134
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 135
    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .registers 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swipe "

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 396
    :goto_17
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    const-string v2, " and "

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 399
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 142
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 146
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 147
    iget p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    iput p1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    :cond_2a
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 19

    move-object v0, p0

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 157
    iget v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 158
    iget v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 159
    iget v7, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 160
    iget-wide v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    sub-long v9, v3, v9

    .line 169
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v11

    if-nez v11, :cond_72

    .line 170
    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    int-to-double v11, v11

    cmpg-double v11, v7, v11

    if-gez v11, :cond_45

    return-void

    .line 173
    :cond_45
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_72

    .line 175
    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v11, v1, v11

    iget v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v12, v2, v12

    invoke-static {v11, v12}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    move-result v11

    .line 176
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-eq v11, v12, :cond_64

    .line 177
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 181
    :cond_64
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v12, Landroid/graphics/PointF;

    iget v13, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iget v14, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_72
    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    float-to-double v11, v11

    cmpl-double v7, v7, v11

    if-lez v7, :cond_83

    .line 186
    iput v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 187
    iput v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 188
    iput-wide v3, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    .line 189
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_a4

    .line 190
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    if-nez v3, :cond_93

    const-wide/16 v3, 0x96

    cmp-long v3, v9, v3

    if-lez v3, :cond_a4

    .line 193
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 196
    :cond_93
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a4

    const-wide/16 v3, 0x15e

    cmp-long v3, v9, v3

    if-lez v3, :cond_a4

    .line 198
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 202
    :cond_a4
    :goto_a4
    iget v3, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v3, v5, v3

    if-gez v3, :cond_b0

    iget v3, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_be

    .line 204
    :cond_b0
    iput v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    .line 205
    iput v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    .line 206
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_be
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    .line 212
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 217
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 219
    iget v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 220
    iget v3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 221
    iget v4, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v2, v2, v4

    if-gez v2, :cond_2f

    iget v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_39

    .line 222
    :cond_2f
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 21

    move-object/from16 v0, p0

    .line 246
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 247
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 257
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 259
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move v8, v3

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 267
    :goto_26
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_93

    .line 268
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    if-lez v8, :cond_73

    int-to-float v12, v8

    div-float v13, v9, v12

    div-float v12, v10, v12

    .line 281
    new-instance v14, Landroid/graphics/PointF;

    mul-float v15, v11, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v3

    mul-float/2addr v11, v12

    iget v3, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v3

    invoke-direct {v14, v15, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 287
    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v11, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v11

    .line 288
    iget v11, v4, Landroid/graphics/PointF;->y:F

    iget v15, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v15

    mul-float v15, v3, v3

    mul-float v16, v11, v11

    add-float v15, v15, v16

    float-to-double v5, v15

    .line 289
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    div-float/2addr v3, v5

    div-float/2addr v11, v5

    mul-float/2addr v13, v3

    mul-float/2addr v12, v11

    add-float/2addr v13, v12

    const/4 v3, 0x0

    cmpg-float v5, v13, v3

    if-gez v5, :cond_74

    .line 297
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v3

    move v10, v9

    move-object v2, v14

    const/4 v8, 0x0

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    .line 306
    :cond_74
    :goto_74
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    .line 307
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v11

    mul-float v11, v5, v5

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    float-to-double v11, v11

    .line 308
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/4 v12, 0x1

    add-int/2addr v8, v12

    div-float/2addr v5, v11

    add-float/2addr v9, v5

    div-float/2addr v6, v11

    add-float/2addr v10, v6

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_26

    .line 316
    :cond_93
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 321
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/accessibility/gestures/Swipe;->recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)V

    return-void
.end method

.method public final recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 337
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_12

    .line 338
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 341
    :goto_13
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_43

    .line 342
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    add-int/lit8 v2, v0, 0x1

    .line 343
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 345
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 346
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    .line 347
    invoke-static {v4, v3}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    move-result v1

    .line 348
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v0, v3, v0

    if-eq v1, v0, :cond_41

    .line 357
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_41
    move v0, v2

    goto :goto_13

    .line 364
    :cond_43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_42

    const-string v1, ", mBaseX: "

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGestureDetectionThreshold:"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesX:"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesY:"

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    .line 415
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 417
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
