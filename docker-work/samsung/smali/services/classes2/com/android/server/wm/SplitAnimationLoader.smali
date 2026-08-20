.class public Lcom/android/server/wm/SplitAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "SplitAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitAnimationLoader"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isSplit()Z

    move-result p0

    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 8

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const v1, 0x10a00df

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_f9

    .line 69
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_33

    move v3, v1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 72
    :goto_34
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x190

    .line 73
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v0, :cond_43

    .line 75
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 77
    :cond_43
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_f9

    :cond_4a
    const/4 v0, -0x1

    .line 81
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTransit()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v1, v3, :cond_82

    const/4 v3, 0x7

    if-eq v1, v3, :cond_72

    const/16 v3, 0x9

    if-eq v1, v3, :cond_72

    const/16 v3, 0xa

    if-eq v1, v3, :cond_82

    const/16 v3, 0x18

    if-eq v1, v3, :cond_82

    const/16 v3, 0x19

    if-eq v1, v3, :cond_72

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_82

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_72

    :goto_70
    move v2, v4

    goto :goto_92

    .line 98
    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_7e

    const v0, 0x10a014e

    goto :goto_70

    :cond_7e
    const v0, 0x10a014f

    goto :goto_92

    .line 86
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_8e

    const v0, 0x10a0150

    goto :goto_92

    :cond_8e
    const v0, 0x10a0151

    goto :goto_70

    .line 106
    :goto_92
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_f4

    if-eqz v2, :cond_f4

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 111
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getCornerRadius()F

    move-result v1

    float-to-int v1, v1

    .line 115
    iget-object v5, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v5}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v5

    const/16 v6, 0x96

    if-eqz v5, :cond_d4

    mul-int/lit8 v1, v1, 0x2

    .line 116
    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 117
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 v1, 0x64

    move v4, v6

    move v6, v1

    goto :goto_dc

    .line 121
    :cond_d4
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    mul-int/lit8 v1, v1, 0x2

    .line 122
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 124
    :goto_dc
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    int-to-long v2, v6

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v2, v4

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 127
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    move-object v2, v0

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    :cond_f4
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_f9
    :goto_f9
    return-void
.end method
