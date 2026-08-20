.class public Lcom/android/server/wm/DexAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "DexAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DexAnimationLoader"


# instance fields
.field public final mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexAnimationLoader;->mTaskPositions:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final applyFrameToAnimation(Landroid/view/animation/Animation;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 121
    invoke-virtual {p1, v0, p0, v0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public final getAnimationResourceId()I
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0x10

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_4c

    .line 105
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0x9

    .line 106
    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_42

    .line 109
    :cond_30
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result p0

    if-eqz p0, :cond_40

    if-nez v0, :cond_40

    const p0, 0x10a0032

    return p0

    :cond_40
    const/4 p0, -0x1

    return p0

    :cond_42
    :goto_42
    if-eqz v0, :cond_48

    const p0, 0x10a002e

    goto :goto_4b

    :cond_48
    const p0, 0x10a002f

    :goto_4b
    return p0

    :cond_4c
    :goto_4c
    if-eqz v0, :cond_52

    const p0, 0x10a0030

    goto :goto_55

    :cond_52
    const p0, 0x10a0031

    :goto_55
    return p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isDexMode()Z

    move-result p0

    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 4

    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/DexAnimationLoader;->shouldApplyNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    sget-object v0, Lcom/android/server/wm/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 83
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 91
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/DexAnimationLoader;->getAnimationResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_58

    .line 93
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexAnimationLoader;->applyFrameToAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_58
    return-void
.end method

.method public final loadMinimizeAnimationIfNeeded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public shouldApplyNoAnimation()Z
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isDisplayAreaContainer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    return v2

    .line 130
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_29

    return v1

    .line 133
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    .line 134
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result p0

    if-nez p0, :cond_44

    return v1

    :cond_44
    return v2
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/DexAnimationLoader;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/DexAnimationLoader;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
