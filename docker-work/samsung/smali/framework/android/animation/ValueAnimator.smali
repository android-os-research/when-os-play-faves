.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$DurationScaleChangeListener;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final blacklist TRACE_ANIMATION_FRACTION:Z

.field private static final greylist-max-o sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static greylist-max-p sDurationScale:F

.field private static final blacklist sDurationScaleChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator$DurationScaleChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnimationEndRequested:Z

.field private blacklist mAnimationHandler:Landroid/animation/AnimationHandler;

.field private greylist-max-o mCurrentFraction:F

.field private greylist mDuration:J

.field private greylist-max-o mDurationScale:F

.field private greylist-max-o mFirstFrameTime:J

.field greylist-max-o mInitialized:Z

.field private greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field private greylist-max-o mLastFrameTime:J

.field private greylist-max-o mOverallFraction:F

.field private greylist-max-o mPauseTime:J

.field private greylist-max-o mRepeatCount:I

.field private greylist-max-o mRepeatMode:I

.field private greylist-max-o mResumed:Z

.field private greylist-max-o mReversing:Z

.field private greylist-max-o mRunning:Z

.field greylist-max-o mSeekFraction:F

.field private greylist-max-o mSelfPulse:Z

.field private greylist-max-o mStartDelay:J

.field private greylist-max-o mStartListenersCalled:Z

.field greylist-max-o mStartTime:J

.field greylist-max-o mStartTimeCommitted:Z

.field private greylist-max-o mStarted:Z

.field private greylist-max-o mSuppressSelfPulseRequested:Z

.field greylist-max-o mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mValues:[Landroid/animation/PropertyValuesHolder;

.field greylist-max-o mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 83
    const-string/jumbo v0, "persist.debug.animator.trace_fraction"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 6

    .line 425
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 135
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 148
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 166
    const/4 v4, 0x0

    iput v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 172
    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 177
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 183
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 193
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 199
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 206
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 212
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 217
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 224
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 234
    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 247
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 253
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 260
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 281
    iput v2, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 426
    return-void
.end method

.method private greylist-max-o addAnimationCallback(J)V
    .registers 4
    .param p1, "delay"    # J

    .line 1609
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1610
    return-void

    .line 1612
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 1613
    return-void
.end method

.method private greylist-max-o addOneShotCommitCallback()V
    .registers 2

    .line 1595
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1596
    return-void

    .line 1598
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1599
    return-void
.end method

.method public static whitelist areAnimatorsEnabled()Z
    .registers 2

    .line 417
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o clampFraction(F)F
    .registers 4
    .param p1, "fraction"    # F

    .line 815
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 816
    const/4 p1, 0x0

    goto :goto_13

    .line 817
    :cond_7
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 818
    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 820
    :cond_13
    :goto_13
    return p1
.end method

.method private greylist-max-o endAnimation()V
    .registers 8

    .line 1310
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_5

    .line 1311
    return-void

    .line 1313
    :cond_5
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1316
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1317
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v2, :cond_1b

    :cond_16
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 1318
    .local v0, "notify":Z
    :goto_1c
    if-eqz v0, :cond_25

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v2, :cond_25

    .line 1320
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1322
    :cond_25
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1323
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1324
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1325
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1326
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1327
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1328
    if-eqz v0, :cond_56

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_56

    .line 1329
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1330
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1331
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1332
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_46
    if-ge v4, v3, :cond_56

    .line 1333
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v5, p0, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 1332
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 1337
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_56
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1338
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1339
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1339
    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1342
    :cond_6b
    return-void
.end method

.method public static greylist-max-o getCurrentAnimationsCount()I
    .registers 1

    .line 1722
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentIteration(F)I
    .registers 6
    .param p1, "fraction"    # F

    .line 784
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 788
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 789
    .local v0, "iteration":D
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_16

    .line 790
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 792
    :cond_16
    double-to-int v2, v0

    return v2
.end method

.method private greylist-max-o getCurrentIterationFraction(FZ)F
    .registers 6
    .param p1, "fraction"    # F
    .param p2, "inReverse"    # Z

    .line 801
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 802
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v0

    .line 803
    .local v0, "iteration":I
    int-to-float v1, v0

    sub-float v1, p1, v1

    .line 804
    .local v1, "currentFraction":F
    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    return v2
.end method

.method public static whitelist getDurationScale()F
    .registers 1

    .line 345
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static whitelist getFrameDelay()J
    .registers 2

    .line 911
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getScaledDuration()J
    .registers 3

    .line 704
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private greylist-max-o isPulsingInternal()Z
    .registers 5

    .line 1373
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o notifyStartListeners()V
    .registers 6

    .line 1109
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v0, :cond_25

    .line 1110
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1111
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1112
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1113
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_25

    .line 1114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1117
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1118
    return-void
.end method

.method public static varargs whitelist ofArgb([I)Landroid/animation/ValueAnimator;
    .registers 3
    .param p0, "values"    # [I

    .line 457
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 458
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 459
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 460
    return-object v0
.end method

.method public static varargs whitelist ofFloat([F)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [F

    .line 475
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 476
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 477
    return-object v0
.end method

.method public static varargs whitelist ofInt([I)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [I

    .line 440
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 441
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 442
    return-object v0
.end method

.method public static varargs whitelist ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .registers 3
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 517
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 518
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 519
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 520
    return-object v0
.end method

.method public static varargs whitelist ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 489
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 490
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 491
    return-object v0
.end method

.method public static whitelist registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 7
    .param p0, "listener"    # Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 359
    const/4 v0, -0x1

    .line 360
    .local v0, "posToReplace":I
    sget-object v1, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 361
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    sget-object v3, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v2, v4, :cond_2b

    .line 362
    nop

    .line 363
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 364
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 365
    if-ne v0, v5, :cond_28

    .line 366
    move v0, v2

    goto :goto_28

    .line 368
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_28

    .line 369
    const/4 v4, 0x0

    monitor-exit v1

    return v4

    .line 361
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 372
    .end local v2    # "i":I
    :cond_2b
    if-eq v0, v5, :cond_38

    .line 373
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 376
    :cond_38
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 378
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_43

    throw v2
.end method

.method private greylist-max-o removeAnimationCallback()V
    .registers 2

    .line 1602
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_5

    .line 1603
    return-void

    .line 1605
    :cond_5
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1606
    return-void
.end method

.method private greylist-max-o resolveDurationScale()F
    .registers 3

    .line 700
    iget v0, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_8

    goto :goto_a

    :cond_8
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    :goto_a
    return v0
.end method

.method public static greylist setDurationScale(F)V
    .registers 5
    .param p0, "durationScale"    # F

    .line 320
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 323
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 324
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v1, "listenerCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_28

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 328
    .local v2, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 329
    .local v3, "listener":Landroid/animation/ValueAnimator$DurationScaleChangeListener;
    if-eqz v3, :cond_26

    .line 330
    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$DurationScaleChangeListener;->onChanged(F)V

    .line 332
    .end local v2    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    .end local v3    # "listener":Landroid/animation/ValueAnimator$DurationScaleChangeListener;
    :cond_26
    goto :goto_f

    .line 333
    :cond_27
    return-void

    .line 325
    .end local v1    # "listenerCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;>;"
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static whitelist setFrameDelay(J)V
    .registers 2
    .param p0, "frameDelay"    # J

    .line 931
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 932
    return-void
.end method

.method private greylist-max-o shouldPlayBackward(IZ)Z
    .registers 6
    .param p1, "iteration"    # I
    .param p2, "inReverse"    # Z

    .line 829
    if-lez p1, :cond_20

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    if-lt p1, v1, :cond_10

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 833
    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1a

    .line 834
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_19

    move v0, v1

    :cond_19
    return v0

    .line 836
    :cond_1a
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    .line 839
    :cond_20
    return p2
.end method

.method private greylist-max-o start(Z)V
    .registers 10
    .param p1, "playBackwards"    # Z

    .line 1134
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 1137
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1138
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1140
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_35

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_35

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_35

    .line 1141
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_30

    .line 1143
    float-to-double v4, v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    .line 1144
    .local v3, "fraction":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1145
    .end local v3    # "fraction":F
    goto :goto_35

    .line 1146
    :cond_30
    add-int/2addr v4, v1

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1149
    :cond_35
    :goto_35
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1150
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1151
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1152
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1156
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1157
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1158
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1159
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1161
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5b

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_5b

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_6b

    .line 1165
    :cond_5b
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1166
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v0, v2

    if-nez v1, :cond_68

    .line 1170
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_6b

    .line 1172
    :cond_68
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 1175
    :cond_6b
    :goto_6b
    return-void

    .line 1135
    :cond_6c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o startAnimation()V
    .registers 5

    .line 1349
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1350
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1350
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1354
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1355
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1357
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_26

    .line 1358
    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_28

    .line 1360
    :cond_26
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1362
    :goto_28
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    .line 1363
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1365
    :cond_2f
    return-void
.end method

.method public static whitelist unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z
    .registers 6
    .param p0, "listener"    # Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 390
    sget-object v0, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, "listenerRefToRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 394
    .local v3, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1c

    .line 395
    move-object v1, v3

    .line 396
    goto :goto_1d

    .line 398
    .end local v3    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :cond_1c
    goto :goto_8

    .line 399
    :cond_1d
    :goto_1d
    sget-object v2, Landroid/animation/ValueAnimator;->sDurationScaleChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 400
    .end local v1    # "listenerRefToRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/animation/ValueAnimator$DurationScaleChangeListener;>;"
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method


# virtual methods
.method public whitelist addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1024
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1027
    :cond_b
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    return-void
.end method

.method greylist-max-o animateBasedOnPlayTime(JJZ)V
    .registers 11
    .param p1, "currentPlayTime"    # J
    .param p3, "lastPlayTime"    # J
    .param p5, "inReverse"    # Z

    .line 1456
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_60

    cmp-long v0, p3, v0

    if-ltz v0, :cond_60

    .line 1460
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1462
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_40

    .line 1463
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v3, p1, v1

    long-to-int v3, v3

    .line 1464
    .local v3, "iteration":I
    div-long v1, p3, v1

    long-to-int v1, v1

    .line 1467
    .local v1, "lastIteration":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1468
    .end local v3    # "iteration":I
    .local v0, "iteration":I
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1470
    if-eq v0, v1, :cond_40

    .line 1471
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_40

    .line 1472
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1473
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v2, :cond_40

    .line 1474
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1473
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1480
    .end local v0    # "iteration":I
    .end local v1    # "lastIteration":I
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_40
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_53

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_53

    .line 1481
    invoke-virtual {p0, p5}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    goto :goto_5f

    .line 1484
    :cond_53
    long-to-float v0, p1

    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1485
    .local v0, "fraction":F
    invoke-direct {p0, v0, p5}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 1486
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1488
    .end local v0    # "fraction":F
    :goto_5f
    return-void

    .line 1457
    :cond_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Play time should never be negative."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o animateBasedOnTime(J)Z
    .registers 15
    .param p1, "currentTime"    # J

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, "done":Z
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_6a

    .line 1416
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v1

    .line 1417
    .local v1, "scaledDuration":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_17

    .line 1418
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v5, p1, v5

    long-to-float v5, v5

    long-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_19

    :cond_17
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1419
    .local v5, "fraction":F
    :goto_19
    iget v6, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1420
    .local v6, "lastFraction":F
    float-to-int v7, v5

    float-to-int v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-le v7, v8, :cond_23

    move v7, v10

    goto :goto_24

    :cond_23
    move v7, v9

    .line 1421
    .local v7, "newIteration":Z
    :goto_24
    iget v8, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v11, v8, 0x1

    int-to-float v11, v11

    cmpl-float v11, v5, v11

    if-ltz v11, :cond_31

    const/4 v11, -0x1

    if-eq v8, v11, :cond_31

    move v9, v10

    :cond_31
    move v8, v9

    .line 1423
    .local v8, "lastIterationFinished":Z
    cmp-long v3, v1, v3

    if-nez v3, :cond_38

    .line 1425
    const/4 v0, 0x1

    goto :goto_5b

    .line 1426
    :cond_38
    if-eqz v7, :cond_58

    if-nez v8, :cond_58

    .line 1428
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_5b

    .line 1429
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1430
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-ge v4, v3, :cond_57

    .line 1431
    iget-object v9, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v9, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1430
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1433
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_57
    goto :goto_5b

    .line 1434
    :cond_58
    if-eqz v8, :cond_5b

    .line 1435
    const/4 v0, 0x1

    .line 1437
    :cond_5b
    :goto_5b
    invoke-direct {p0, v5}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v3

    iput v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1438
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v3

    .line 1440
    .local v3, "currentIterationFraction":F
    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1442
    .end local v1    # "scaledDuration":J
    .end local v3    # "currentIterationFraction":F
    .end local v5    # "fraction":F
    .end local v6    # "lastFraction":F
    .end local v7    # "newIteration":Z
    .end local v8    # "lastIterationFinished":Z
    :cond_6a
    return v0
.end method

.method greylist animateValue(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 1640
    sget-boolean v0, Landroid/animation/ValueAnimator;->TRACE_ANIMATION_FRACTION:Z

    if-eqz v0, :cond_26

    .line 1641
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1644
    :cond_26
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1645
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1646
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 1647
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_3e

    .line 1648
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1650
    .end local v1    # "i":I
    :cond_3e
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 1651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1652
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    if-ge v2, v1, :cond_57

    .line 1653
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1652
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1656
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_57
    return-void
.end method

.method public greylist-max-o canReverse()Z
    .registers 2

    .line 1302
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist cancel()V
    .registers 4

    .line 1194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1200
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v0, :cond_b

    .line 1201
    return-void

    .line 1207
    :cond_b
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_3a

    :cond_13
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 1208
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_1e

    .line 1210
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1212
    :cond_1e
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 1213
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1214
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 1215
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1216
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_2a

    .line 1218
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3a
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1220
    return-void

    .line 1195
    :cond_3e
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/Animator;
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/animation/ValueAnimator;
    .registers 8

    .line 1660
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1661
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 1662
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1664
    :cond_13
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1665
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1666
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1667
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1668
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1669
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1670
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1671
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1672
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1673
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1674
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1675
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1676
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1677
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 1678
    const/4 v2, 0x0

    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1679
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1680
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 1681
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1683
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1684
    .local v1, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v1, :cond_67

    .line 1685
    array-length v2, v1

    .line 1686
    .local v2, "numValues":I
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1687
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1688
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    if-ge v3, v2, :cond_67

    .line 1689
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1690
    .local v4, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v3

    .line 1691
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    .end local v4    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 1694
    .end local v2    # "numValues":I
    .end local v3    # "i":I
    :cond_67
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o commitAnimationFrame(J)V
    .registers 7
    .param p1, "frameTime"    # J

    .line 1389
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v0, :cond_16

    .line 1390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1391
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v0

    .line 1392
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_16

    .line 1393
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1399
    .end local v0    # "adjustment":J
    :cond_16
    return-void
.end method

.method public final greylist-max-o doAnimationFrame(J)Z
    .registers 11
    .param p1, "frameTime"    # J

    .line 1521
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 1524
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v0, :cond_e

    .line 1525
    move-wide v0, p1

    goto :goto_18

    .line 1526
    :cond_e
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v0, v0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, p1

    :goto_18
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1530
    :cond_1a
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1531
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1532
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 1533
    return v1

    .line 1534
    :cond_25
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_38

    .line 1535
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1536
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_38

    .line 1538
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, p1, v4

    add-long/2addr v6, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1542
    :cond_38
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v0, :cond_51

    .line 1545
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v0, v5, p1

    if-lez v0, :cond_4b

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4b

    .line 1549
    return v1

    .line 1553
    :cond_4b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1554
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1558
    :cond_51
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v0, v5, v2

    if-gez v0, :cond_6f

    .line 1559
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6d

    .line 1560
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v2

    long-to-float v0, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 1561
    .local v2, "seekTime":J
    sub-long v5, p1, v2

    iput-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1562
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1564
    .end local v2    # "seekTime":J
    :cond_6d
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1566
    :cond_6f
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1571
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1572
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    .line 1574
    .local v2, "finished":Z
    if-eqz v2, :cond_80

    .line 1575
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1577
    :cond_80
    return v2
.end method

.method public whitelist end()V
    .registers 3

    .line 1224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1227
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_11

    .line 1229
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_18

    .line 1231
    :cond_11
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_18

    .line 1232
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1234
    :cond_18
    :goto_18
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_26
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1235
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1236
    return-void

    .line 1225
    :cond_2d
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAnimatedFraction()F
    .registers 2

    .line 1622
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public whitelist getAnimatedValue()Ljava/lang/Object;
    .registers 3

    .line 947
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    .line 948
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 951
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 966
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_f

    .line 967
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 970
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 1780
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public whitelist getCurrentPlayTime()J
    .registers 6

    .line 853
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    goto :goto_31

    .line 856
    :cond_10
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1c

    .line 857
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    return-wide v0

    .line 859
    :cond_1c
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->resolveDurationScale()F

    move-result v0

    .line 860
    .local v0, "durationScale":F
    cmpl-float v1, v0, v1

    if-nez v1, :cond_26

    .line 861
    const/high16 v0, 0x3f800000    # 1.0f

    .line 863
    :cond_26
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v1, v1

    return-wide v1

    .line 854
    .end local v0    # "durationScale":F
    :cond_31
    :goto_31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 714
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1083
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method greylist-max-o getNameForTrace()Ljava/lang/String;
    .registers 2

    .line 1380
    const-string v0, "animator"

    return-object v0
.end method

.method public whitelist getRepeatCount()I
    .registers 2

    .line 992
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .registers 2

    .line 1013
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 874
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTotalDuration()J
    .registers 8

    .line 719
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 720
    const-wide/16 v0, -0x1

    return-wide v0

    .line 722
    :cond_8
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-int/lit8 v0, v0, 0x1

    int-to-long v5, v0

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist getValues()[Landroid/animation/PropertyValuesHolder;
    .registers 2

    .line 645
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method greylist-max-o initAnimation()V
    .registers 4

    .line 660
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_17

    .line 661
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    .line 662
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 663
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 665
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 667
    .end local v0    # "numValues":I
    :cond_17
    return-void
.end method

.method greylist-max-o isInitialized()Z
    .registers 2

    .line 1510
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 1265
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public whitelist isStarted()Z
    .registers 2

    .line 1270
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public greylist-max-o overrideDurationScale(F)V
    .registers 2
    .param p1, "durationScale"    # F

    .line 696
    iput p1, p0, Landroid/animation/ValueAnimator;->mDurationScale:F

    .line 697
    return-void
.end method

.method public whitelist pause()V
    .registers 4

    .line 1255
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1256
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1257
    if-nez v0, :cond_12

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_12

    .line 1258
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1259
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1261
    :cond_12
    return-void
.end method

.method greylist-max-o pulseAnimationFrame(J)Z
    .registers 4
    .param p1, "frameTime"    # J

    .line 1582
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_6

    .line 1589
    const/4 v0, 0x0

    return v0

    .line 1591
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAllUpdateListeners()V
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1035
    return-void

    .line 1037
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1039
    return-void
.end method

.method public whitelist removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1048
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1049
    return-void

    .line 1051
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1052
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1055
    :cond_13
    return-void
.end method

.method public whitelist resume()V
    .registers 5

    .line 1240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1244
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-nez v0, :cond_1c

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1246
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1247
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 1250
    :cond_1c
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1251
    return-void

    .line 1241
    :cond_20
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reverse()V
    .registers 11

    .line 1282
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 1283
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1284
    .local v2, "currentTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v4, v2, v4

    .line 1285
    .local v4, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1286
    .local v6, "timeLeft":J
    sub-long v8, v2, v6

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1287
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1288
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1289
    .end local v2    # "currentTime":J
    .end local v4    # "currentPlayTime":J
    .end local v6    # "timeLeft":J
    goto :goto_30

    :cond_20
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_2d

    .line 1290
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1291
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_30

    .line 1293
    :cond_2d
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1295
    :goto_30
    return-void
.end method

.method public greylist-max-o setAllowRunningAsynchronously(Z)V
    .registers 2
    .param p1, "mayRunAsync"    # Z

    .line 1773
    return-void
.end method

.method public blacklist setAnimationHandler(Landroid/animation/AnimationHandler;)V
    .registers 2
    .param p1, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 1789
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 1790
    return-void
.end method

.method public whitelist setCurrentFraction(F)V
    .registers 8
    .param p1, "fraction"    # F

    .line 759
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 760
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 762
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 763
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 764
    .local v0, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 767
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 768
    .end local v0    # "seekTime":J
    .end local v2    # "currentTime":J
    goto :goto_22

    .line 771
    :cond_20
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 773
    :goto_22
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 774
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    .line 775
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 776
    return-void
.end method

.method public whitelist setCurrentPlayTime(J)V
    .registers 7
    .param p1, "playTime"    # J

    .line 737
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    long-to-float v2, p1

    long-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_e

    :cond_c
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_e
    move v0, v2

    .line 738
    .local v0, "fraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 739
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/animation/Animator;
    .registers 3

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/animation/ValueAnimator;
    .registers 6
    .param p1, "duration"    # J

    .line 680
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 684
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 685
    return-object p0

    .line 681
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 4
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .line 1103
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    .line 1104
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1106
    :cond_f
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .line 566
    if-eqz p1, :cond_26

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_26

    .line 569
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 572
    :cond_f
    aget-object v0, v0, v1

    .line 573
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_23

    .line 570
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 576
    :goto_23
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 577
    return-void

    .line 567
    :cond_26
    :goto_26
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 5
    .param p1, "values"    # [I

    .line 538
    if-eqz p1, :cond_26

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_26

    .line 541
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 544
    :cond_f
    aget-object v0, v0, v1

    .line 545
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_23

    .line 542
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 548
    :goto_23
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 549
    return-void

    .line 539
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .line 1069
    if-eqz p1, :cond_5

    .line 1070
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_c

    .line 1072
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1074
    :goto_c
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .registers 6
    .param p1, "values"    # [Ljava/lang/Object;

    .line 603
    if-eqz p1, :cond_27

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_27

    .line 606
    :cond_6
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 609
    :cond_f
    aget-object v0, v0, v1

    .line 610
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_24

    .line 607
    .end local v0    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v3, v2, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 613
    :goto_24
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 614
    return-void

    .line 604
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 2
    .param p1, "value"    # I

    .line 983
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 984
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1003
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 1004
    return-void
.end method

.method public whitelist setStartDelay(J)V
    .registers 5
    .param p1, "startDelay"    # J

    .line 887
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 888
    const-string v0, "ValueAnimator"

    const-string v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-wide/16 p1, 0x0

    .line 891
    :cond_f
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 892
    return-void
.end method

.method public varargs whitelist setValues([Landroid/animation/PropertyValuesHolder;)V
    .registers 7
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .line 625
    array-length v0, p1

    .line 626
    .local v0, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 627
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 628
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 629
    aget-object v2, p1, v1

    .line 630
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 633
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 634
    return-void
.end method

.method greylist-max-o skipToEndValue(Z)V
    .registers 6
    .param p1, "inReverse"    # Z

    .line 1499
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1500
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1501
    .local v0, "endFraction":F
    :goto_9
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne v1, v2, :cond_15

    .line 1503
    const/4 v0, 0x0

    .line 1505
    :cond_15
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1506
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 1189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1190
    return-void
.end method

.method greylist-max-o startWithoutPulsing(Z)V
    .registers 3
    .param p1, "inReverse"    # Z

    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1179
    if-eqz p1, :cond_9

    .line 1180
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_c

    .line 1182
    :cond_9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 1184
    :goto_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 1185
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "returnVal":Ljava/lang/String;
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_47

    .line 1729
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 1730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1733
    .end local v1    # "i":I
    :cond_47
    return-object v0
.end method
