.class public Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiFingerMultiTap.java"


# instance fields
.field public mBases:[Landroid/graphics/PointF;

.field public mCompletedTapCount:I

.field public mDoubleTapSlop:I

.field public mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public mIsTargetFingerCountReached:Z

.field public final mTargetFingerCount:I

.field public final mTargetTapCount:I

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 8

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    const/4 p4, 0x0

    .line 48
    iput-boolean p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    const/4 p5, 0x2

    if-lt p2, p5, :cond_14

    const/4 p5, 0x1

    goto :goto_15

    :cond_14
    move p5, p4

    .line 66
    :goto_15
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-string p5, "Tap count must greater than 0."

    .line 67
    invoke-static {p3, p5}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 68
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 69
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p3

    mul-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    .line 73
    new-array p1, p2, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 74
    :goto_3b
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length p2, p1

    if-ge p4, p2, :cond_4a

    .line 75
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    aput-object p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3b

    .line 77
    :cond_4a
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 84
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 85
    :goto_5
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 86
    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 88
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public final findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;
    .registers 13

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    move-object v3, v0

    .line 248
    :goto_6
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length v5, v4

    if-ge v2, v5, :cond_5c

    .line 249
    aget-object v4, v4, v2

    .line 250
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_59

    :cond_1e
    if-eqz p3, :cond_29

    .line 253
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_59

    .line 256
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 257
    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 258
    iget v7, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v7, v5

    const/4 v5, 0x0

    cmpl-float v8, v6, v5

    if-nez v8, :cond_4c

    cmpl-float v5, v7, v5

    if-nez v5, :cond_4c

    if-eqz p3, :cond_4b

    .line 261
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    return-object v4

    :cond_4c
    float-to-double v5, v6

    float-to-double v7, v7

    .line 265
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    cmpl-float v6, v1, v5

    if-lez v6, :cond_59

    move-object v3, v4

    move v1, v5

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5c
    cmpg-float p1, v1, p2

    if-gez p1, :cond_68

    if-eqz p3, :cond_67

    .line 273
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    return-object v3

    :cond_68
    return-object v0
.end method

.method public getGestureName()Ljava/lang/String;
    .registers 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    const-string p0, "Single"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_1a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_23

    const-string p0, "Double"

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_23
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2c

    const-string p0, "Triple"

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    if-le p0, v1, :cond_31

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    const-string p0, " Tap"

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 4

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 226
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    aget-object p0, p0, v1

    .line 227
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_29
    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 96
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_a

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 100
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 102
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    if-nez v0, :cond_15

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    return-void

    .line 109
    :cond_15
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_32

    .line 115
    :cond_2f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_32
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 151
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_d

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_d
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 164
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-gt v0, v1, :cond_49

    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v1, :cond_10

    goto :goto_49

    .line 171
    :cond_10
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 172
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_21

    .line 174
    :cond_1a
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    int-to-float v1, v1

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 176
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    if-eq v3, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    if-nez v3, :cond_45

    :cond_2d
    if-eqz v1, :cond_45

    .line 179
    iget p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-ne v0, p2, :cond_35

    .line 180
    iput-boolean v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 183
    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    .line 184
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {v1, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_48

    .line 186
    :cond_45
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_48
    return-void

    :cond_49
    :goto_49
    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 193
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-nez v0, :cond_8

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    .line 198
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1a

    .line 203
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1d

    .line 201
    :cond_1a
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_1d
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 123
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v2

    if-nez v2, :cond_3b

    :cond_18
    if-eqz v0, :cond_3b

    .line 127
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_2a

    .line 128
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 129
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_2a
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    if-ne v0, v3, :cond_31

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 138
    :cond_31
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_3e

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_3e

    .line 144
    :cond_3b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_40

    const-string v1, ", CompletedTapCount: "

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsTargetFingerCountReached: "

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Bases: "

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExcludedPointsForDownSlopChecked: "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
