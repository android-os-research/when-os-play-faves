.class public Lcom/android/server/wm/EmbedActivityAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "EmbedActivityAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmbedActivityAnimationLoader"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isSplitEmbedded()Z

    move-result p0

    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTransit()I

    move-result v1

    if-eqz v1, :cond_73

    const/16 v2, 0x18

    const v3, 0x10a0044

    if-eq v1, v2, :cond_67

    const/16 v2, 0x19

    const v4, 0x10a0041

    if-eq v1, v2, :cond_5a

    packed-switch v1, :pswitch_data_84

    const/4 v0, 0x0

    goto :goto_7c

    .line 90
    :pswitch_21
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_29

    const v0, 0x10a0045

    goto :goto_2c

    :cond_29
    const v0, 0x10a0046

    :goto_2c
    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    .line 85
    :pswitch_31
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_39

    const v0, 0x10a0047

    goto :goto_3c

    :cond_39
    const v0, 0x10a0048

    :goto_3c
    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    .line 70
    :pswitch_41
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_46

    goto :goto_49

    :cond_46
    const v4, 0x10a0042

    :goto_49
    invoke-virtual {v1, v4}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    .line 65
    :pswitch_4e
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_55

    const v3, 0x10a0043

    :cond_55
    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    .line 80
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_5f

    goto :goto_62

    :cond_5f
    const v4, 0x10a00c9

    :goto_62
    invoke-virtual {v1, v4}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    .line 75
    :cond_67
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    if-eqz v0, :cond_6e

    const v3, 0x10a00ca

    :cond_6e
    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7c

    :cond_73
    const-string v0, "EmbedActivityAnimationLoader"

    const-string v1, "TRANSIT_NONE does not apply any animation in taskFragment"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/android/server/wm/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    :goto_7c
    if-eqz v0, :cond_83

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_83
    return-void

    :pswitch_data_84
    .packed-switch 0x6
        :pswitch_4e
        :pswitch_41
        :pswitch_31
        :pswitch_21
    .end packed-switch
.end method
