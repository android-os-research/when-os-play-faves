.class public Lcom/android/server/wm/DexCompatAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "DexCompatAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DexCompatAnimationLoader"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isDexCompatMode()Z

    move-result p0

    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 4

    .line 53
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatAnimationLoader;->shouldApplyNoAnimation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    sget-object v0, Lcom/android/server/wm/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 58
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->isTransit(I)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 62
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 68
    :cond_45
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 69
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, v0, :cond_77

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_69

    const v0, 0x10a0030

    goto :goto_6c

    :cond_69
    const v0, 0x10a0031

    .line 73
    :goto_6c
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_77
    return-void
.end method

.method public shouldApplyNoAnimation()Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result p0

    if-nez p0, :cond_25

    if-eqz v0, :cond_24

    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    if-nez p0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method
