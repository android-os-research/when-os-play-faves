.class public final Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;
.super Lcom/android/server/wm/animation/rebound/SimpleSpringListener;
.source "TaskMotionAnimator.java"

# interfaces
.implements Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskMotionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlingAnimation"
.end annotation


# static fields
.field public static final ANIMATION_STOP_THRESHOLD:F = 1.5f

.field public static final REDIRECTION_TENSION:I = 0x64

.field public static final REDIRECT_FRICTION:I = 0x32

.field public static final REDIRECT_OFFSET:I = 0x2

.field public static final REDIRECT_VERTICAL_THRESHOLD:I = 0x96


# instance fields
.field public final MIN_VALUE_THRESHOLD:F

.field public final mAnimatedBounds:Landroid/graphics/RectF;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mFromOutOfBoundary:Z

.field public mHorizontalRedirected:Z

.field public final mInBoundary:Z

.field public mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mTmpRectF:Landroid/graphics/RectF;

.field public mVerticalRedirected:Z

.field public final synthetic this$0:Lcom/android/server/wm/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskMotionAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFF)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p1

    .line 252
    iput-object v6, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/animation/rebound/SimpleSpringListener;-><init>()V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 231
    iput v7, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->MIN_VALUE_THRESHOLD:F

    .line 238
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mDisplayBounds:Landroid/graphics/Rect;

    .line 239
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    .line 240
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStartBounds:Landroid/graphics/Rect;

    .line 241
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    .line 242
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    .line 243
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mTmpRectF:Landroid/graphics/RectF;

    .line 253
    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    invoke-virtual {v11, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 258
    iput-boolean v5, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mInBoundary:Z

    .line 259
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mFromOutOfBoundary:Z

    .line 261
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->createSpring()Lcom/android/server/wm/animation/rebound/Spring;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    .line 262
    new-instance v10, Lcom/android/server/wm/animation/rebound/SpringConfig;

    move/from16 v11, p8

    float-to-double v11, v11

    .line 263
    invoke-static {v11, v12}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v13

    move/from16 v15, p9

    move/from16 v16, v7

    float-to-double v6, v15

    .line 264
    invoke-static {v6, v7}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v1

    invoke-direct {v10, v13, v14, v1, v2}, Lcom/android/server/wm/animation/rebound/SpringConfig;-><init>(DD)V

    .line 262
    invoke-virtual {v8, v10}, Lcom/android/server/wm/animation/rebound/Spring;->setSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->createSpring()Lcom/android/server/wm/animation/rebound/Spring;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    .line 266
    new-instance v2, Lcom/android/server/wm/animation/rebound/SpringConfig;

    .line 267
    invoke-static {v11, v12}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v10

    .line 268
    invoke-static {v6, v7}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v6

    invoke-direct {v2, v10, v11, v6, v7}, Lcom/android/server/wm/animation/rebound/SpringConfig;-><init>(DD)V

    .line 266
    invoke-virtual {v1, v2}, Lcom/android/server/wm/animation/rebound/Spring;->setSpringConfig(Lcom/android/server/wm/animation/rebound/SpringConfig;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 270
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-double v6, v2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/animation/rebound/Spring;->setCurrentValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 271
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-double v6, v2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/animation/rebound/Spring;->setCurrentValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 273
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    move/from16 v2, p7

    float-to-double v6, v2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/animation/rebound/Spring;->setVelocity(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 274
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/animation/rebound/Spring;->setVelocity(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 275
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/animation/rebound/Spring;->addListener(Lcom/android/server/wm/animation/rebound/SpringListener;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 276
    iget-object v1, v0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/animation/rebound/Spring;->addListener(Lcom/android/server/wm/animation/rebound/SpringListener;)Lcom/android/server/wm/animation/rebound/Spring;

    .line 277
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_105

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingAnimation: startBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " endBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " displayBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mStableBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fromOutOfBoundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskMotionAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    return-void
.end method


# virtual methods
.method public adjustRectIntoBoundary(Landroid/graphics/RectF;)V
    .registers 13

    .line 425
    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 426
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    .line 428
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 429
    :cond_1f
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    .line 432
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x96

    if-nez v0, :cond_b0

    iget-object v4, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-le v5, v7, :cond_b0

    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v10, v9

    cmpg-float v10, v5, v10

    if-gez v10, :cond_b0

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_b0

    .line 435
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    .line 436
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v9

    sub-float/2addr v7, v5

    mul-float/2addr v7, v2

    .line 438
    iget-boolean v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    if-nez v2, :cond_79

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, v0, :cond_79

    .line 439
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    sub-int v1, v0, v5

    if-le v1, v3, :cond_5f

    .line 442
    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v7

    float-to-int p1, p1

    goto :goto_66

    .line 444
    :cond_5f
    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 446
    :goto_66
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mDisplayBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 447
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    goto :goto_9c

    :cond_79
    if-nez v2, :cond_9c

    .line 448
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-le v2, v0, :cond_9c

    .line 449
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    sub-int v1, v2, v0

    if-le v1, v3, :cond_89

    .line 452
    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v7

    goto :goto_90

    .line 454
    :cond_89
    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    add-float/2addr p1, v0

    :goto_90
    float-to-int p1, p1

    .line 456
    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 457
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    .line 459
    :cond_9c
    :goto_9c
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 460
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    goto/16 :goto_195

    :cond_b0
    if-nez v0, :cond_13f

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v6, :cond_13f

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_13f

    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_13f

    .line 464
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    .line 465
    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    mul-float/2addr v4, v2

    .line 467
    iget-boolean v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    if-nez v2, :cond_104

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_104

    .line 468
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    sub-int v0, v8, v7

    if-le v0, v3, :cond_e9

    .line 471
    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v4

    goto :goto_f0

    .line 473
    :cond_e9
    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    int-to-float v0, v8

    add-float/2addr p1, v0

    :goto_f0
    float-to-int p1, p1

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mDisplayBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 476
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    goto :goto_127

    :cond_104
    if-nez v2, :cond_127

    .line 477
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le v0, v8, :cond_127

    .line 478
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    sub-int v1, v0, v8

    if-le v1, v3, :cond_114

    .line 481
    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v4

    goto :goto_11b

    .line 483
    :cond_114
    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_11b
    float-to-int p1, p1

    .line 485
    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 486
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    .line 488
    :cond_127
    :goto_127
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 489
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    goto :goto_195

    .line 490
    :cond_13f
    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    if-nez v0, :cond_169

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_169

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_169

    .line 492
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    .line 493
    iget p1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 494
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    goto :goto_195

    :cond_169
    if-nez v0, :cond_195

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_195

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mStableBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_195

    .line 497
    iput-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mVerticalRedirected:Z

    .line 498
    iget p1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 499
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V

    :cond_195
    :goto_195
    return-void
.end method

.method public cancel(Z)V
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-nez v1, :cond_18

    goto :goto_60

    .line 307
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmCanceled(Lcom/android/server/wm/TaskMotionAnimator;Z)V

    .line 308
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_25

    .line 309
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    .line 311
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_2c

    .line 312
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    .line 315
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 317
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1, v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 319
    :cond_41
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object p1

    .line 320
    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 321
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_62

    if-eqz p1, :cond_54

    .line 324
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    invoke-interface {p1, p0, v2}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    .line 326
    :cond_54
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_5f

    const-string p0, "TaskMotionAnimator"

    const-string p1, "FlingAnimation[cancel]"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void

    .line 304
    :cond_60
    :goto_60
    :try_start_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    .line 321
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public getDragBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 419
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 421
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public isAnimating()Z
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz p0, :cond_1d

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result p0

    if-nez p0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onSpringAtRest(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 5

    .line 391
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 392
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 393
    monitor-exit p1

    return-void

    .line 396
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_24

    .line 399
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->destroy()V

    .line 400
    iput-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    .line 402
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_2d

    .line 403
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->destroy()V

    .line 404
    iput-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    .line 406
    :cond_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_42

    if-eqz v0, :cond_36

    .line 409
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    .line 411
    :cond_36
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_41

    const-string p0, "TaskMotionAnimator"

    const-string p1, "FlingAnimation[finish]"

    .line 412
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    .line 406
    :try_start_43
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onSpringUpdate(Lcom/android/server/wm/animation/rebound/Spring;)V
    .registers 9

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 343
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_dc

    .line 345
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 346
    monitor-exit v0

    return-void

    .line 349
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_32

    .line 350
    invoke-virtual {v1}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    goto :goto_36

    .line 352
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 355
    :goto_36
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v2, :cond_41

    .line 356
    invoke-virtual {v2}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    goto :goto_45

    .line 358
    :cond_41
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_45
    float-to-double v3, v1

    .line 361
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v2

    .line 362
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 363
    iget-object v5, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_61

    iget v3, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_61

    .line 364
    monitor-exit v0

    return-void

    .line 367
    :cond_61
    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 368
    iget-boolean v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mInBoundary:Z

    if-eqz v1, :cond_6d

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->adjustRectIntoBoundary(Landroid/graphics/RectF;)V

    .line 371
    :cond_6d
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 372
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 373
    iget-object v3, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v3}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v4}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v2, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {v3, v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 374
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_de

    .line 376
    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mFromOutOfBoundary:Z

    if-eqz v0, :cond_ca

    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mInBoundary:Z

    if-eqz v0, :cond_ca

    iget-boolean v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mHorizontalRedirected:Z

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v0, :cond_ca

    .line 377
    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentDisplacementDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_ca

    .line 379
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    .line 380
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz p1, :cond_db

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result p1

    if-nez p1, :cond_db

    .line 381
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    invoke-virtual {p0}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    goto :goto_db

    .line 383
    :cond_ca
    iget-boolean p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mInBoundary:Z

    if-nez p0, :cond_db

    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getCurrentDisplacementDistance()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_db

    .line 384
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->setAtRest()Lcom/android/server/wm/animation/rebound/Spring;

    :cond_db
    :goto_db
    return-void

    .line 343
    :cond_dc
    :goto_dc
    :try_start_dc
    monitor-exit v0

    return-void

    :catchall_de
    move-exception p0

    .line 374
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public start()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 287
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateX:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_13

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/animation/rebound/Spring;->setEndValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 290
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mSpringTranslateY:Lcom/android/server/wm/animation/rebound/Spring;

    if-eqz v1, :cond_1f

    .line 291
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$FlingAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-double v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/animation/rebound/Spring;->setEndValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    .line 293
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_2c

    .line 294
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_2b

    const-string p0, "TaskMotionAnimator"

    const-string v0, "FlingAnimation[start]"

    .line 295
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 293
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final updateSpringConfig(Lcom/android/server/wm/animation/rebound/Spring;I)V
    .registers 7

    if-eqz p1, :cond_23

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->isAtRest()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_23

    .line 507
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getSpringConfig()Lcom/android/server/wm/animation/rebound/SpringConfig;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->friction:D

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->friction:D

    .line 508
    invoke-virtual {p1}, Lcom/android/server/wm/animation/rebound/Spring;->getSpringConfig()Lcom/android/server/wm/animation/rebound/SpringConfig;

    move-result-object p0

    iget-wide v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    int-to-double v0, p2

    .line 509
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/animation/rebound/Spring;->setEndValue(D)Lcom/android/server/wm/animation/rebound/Spring;

    :cond_23
    :goto_23
    return-void
.end method
