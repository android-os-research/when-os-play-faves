.class public Lcom/android/server/wm/SplitActivityAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "SplitActivityAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitActivityAnimationLoader"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTransit()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_30

    const/4 v2, 0x7

    if-eq v1, v2, :cond_20

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_18

    const/4 v0, 0x0

    goto :goto_3f

    .line 57
    :cond_18
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_3f

    .line 65
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_28

    const v0, 0x10a0041

    goto :goto_2b

    :cond_28
    const v0, 0x10a0042

    :goto_2b
    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3f

    .line 60
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_38

    const v0, 0x10a0043

    goto :goto_3b

    :cond_38
    const v0, 0x10a0044

    :goto_3b
    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_3f
    if-eqz v0, :cond_4b

    const-wide/16 v1, 0x150

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_4b
    return-void
.end method
