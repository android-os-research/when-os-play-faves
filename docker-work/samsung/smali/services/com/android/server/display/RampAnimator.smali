.class public Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$DualRampAnimator;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RAMP_ANIMATOR_TIMEOUT_SECONDS:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field public mAnimatedValue:F

.field public mAnimating:Z

.field public final mAnimationCallback:Ljava/lang/Runnable;

.field public mAnimationDecreaseMaxTimeSecs:F

.field public mAnimationIncreaseMaxTimeSecs:F

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCurrentValue:F

.field public mFirstTime:Z

.field public mLastFrameTimeNanos:J

.field public mListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mRate:F

.field public mRateAtHbm:F

.field public mTarget:F

.field public mTargetValue:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateAtHbm(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 208
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 61
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public animateTo(FFF)Z
    .registers 10

    .line 93
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 94
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 100
    :goto_d
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v4, 0x0

    if-nez v3, :cond_88

    cmpg-float v5, p2, v4

    if-gtz v5, :cond_18

    goto/16 :goto_88

    .line 122
    :cond_18
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, p1, v0

    if-lez v3, :cond_2f

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2f

    sub-float v5, p1, v0

    div-float/2addr v5, p2

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2f

    sub-float p2, p1, v0

    :goto_2d
    div-float/2addr p2, v3

    goto :goto_43

    :cond_2f
    cmpg-float v3, p1, v0

    if-gez v3, :cond_43

    .line 125
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_43

    sub-float v4, v0, p1

    div-float/2addr v4, p2

    cmpl-float v4, v4, v3

    if-lez v4, :cond_43

    sub-float p2, v0, p1

    goto :goto_2d

    .line 137
    :cond_43
    :goto_43
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v3, :cond_67

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_67

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    cmpl-float v4, p3, v4

    if-nez v4, :cond_67

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_5d

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v0, v4

    if-lez v4, :cond_67

    :cond_5d
    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_6b

    cmpg-float v4, v0, p1

    if-gtz v4, :cond_6b

    .line 145
    :cond_67
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 146
    iput p3, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 149
    :cond_6b
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_72

    move v2, v1

    .line 150
    :cond_72
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    if-nez v3, :cond_87

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_87

    .line 154
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 155
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 157
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_87
    return v2

    :cond_88
    :goto_88
    if-nez v3, :cond_94

    .line 101
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_94

    if-eqz v0, :cond_93

    goto :goto_94

    :cond_93
    return v2

    .line 103
    :cond_94
    :goto_94
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 104
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 105
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRateAtHbm:F

    .line 106
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 107
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 109
    iget-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p1, :cond_aa

    .line 110
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 113
    :cond_aa
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz p0, :cond_b1

    .line 114
    invoke-interface {p0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_b1
    return v1
.end method

.method public final cancelAnimationCallback()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentValue()F
    .registers 1

    .line 176
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p0
.end method

.method public getTarget()F
    .registers 1

    .line 172
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    return p0
.end method

.method public isAnimating()Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p0
.end method

.method public final postAnimationCallback()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationTimeLimits(JJ)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    if-lez v2, :cond_c

    long-to-float p1, p1

    div-float/2addr p1, v3

    goto :goto_d

    :cond_c
    move p1, v4

    .line 70
    :goto_d
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmp-long p1, p3, v0

    if-lez p1, :cond_16

    long-to-float p1, p3

    div-float v4, p1, v3

    .line 72
    :cond_16
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method

.method public final setPropertyValue(F)V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
