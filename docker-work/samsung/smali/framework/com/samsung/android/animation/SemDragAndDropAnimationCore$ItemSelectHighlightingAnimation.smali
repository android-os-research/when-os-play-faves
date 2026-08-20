.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;
.super Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSelectHighlightingAnimation"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FROM_X:F = 1.0f

.field private static final blacklist DEFAULT_FROM_Y:F = 1.0f

.field private static final blacklist DEFAULT_TO_X:F = 1.08f

.field private static final blacklist DEFAULT_TO_Y:F = 1.08f


# instance fields
.field private blacklist mFromX:F

.field private blacklist mFromY:F

.field private blacklist mHalfOfAnimationPassed:Z

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mPivotX:F

.field private blacklist mPivotY:F

.field private blacklist mToX:F

.field private blacklist mToY:F


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "childHitRect"    # Landroid/graphics/Rect;

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 204
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    .line 208
    const v1, 0x3f8a3d71    # 1.08f

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    .line 209
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    .line 210
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    .line 211
    return-void
.end method

.method private blacklist switchToScaleDown()V
    .registers 3

    .line 259
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    .line 260
    .local v0, "temp":F
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    .line 261
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    .line 263
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    .line 264
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    .line 265
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    .line 266
    return-void
.end method


# virtual methods
.method blacklist computeAnimation(J)V
    .registers 5
    .param p1, "curUpTime"    # J

    .line 270
    invoke-super {p0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    .line 272
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez v0, :cond_15

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    .line 276
    :cond_15
    return-void
.end method

.method blacklist getTransformation(Landroid/view/animation/Transformation;)V
    .registers 9
    .param p1, "outTransform"    # Landroid/view/animation/Transformation;

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 238
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 239
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 241
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    .line 242
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    .line 245
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mProgress:F

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 246
    .local v1, "interpolatedProgress":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 247
    .local v3, "sx":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 249
    .local v4, "sy":F
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v6, v5, v2

    if-nez v6, :cond_2d

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_33

    .line 250
    :cond_2d
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v1

    add-float v3, v5, v6

    .line 252
    :cond_33
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v6, v5, v2

    if-nez v6, :cond_3f

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_45

    .line 253
    :cond_3f
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v1

    add-float v4, v5, v2

    .line 255
    :cond_45
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 256
    return-void
.end method

.method blacklist setScaleUpParameters(FFFFFF)V
    .registers 7
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .line 226
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromX:F

    .line 227
    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToX:F

    .line 228
    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mFromY:F

    .line 229
    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mToY:F

    .line 231
    iput p5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotX:F

    .line 232
    iput p6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mPivotY:F

    .line 233
    return-void
.end method

.method blacklist setStartAndDuration(I)V
    .registers 4
    .param p1, "duration"    # I

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mStartTime:J

    .line 280
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    .line 282
    if-nez p1, :cond_e

    .line 283
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->mDuration:I

    .line 285
    :cond_e
    return-void
.end method
