.class public Lcom/android/server/wm/FreeformAnimationLoader;
.super Lcom/android/server/wm/AnimationLoader;
.source "FreeformAnimationLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FreeformAnimationLoader"


# instance fields
.field public final mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

.field public final mFreeformContainerPoint:Landroid/graphics/PointF;

.field public mFreeformContainerPointReported:Z

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AnimationLoader;-><init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPointReported:Z

    .line 59
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPoint:Landroid/graphics/PointF;

    .line 60
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static loadWindowAnimationIfNeeded(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowState;I)Landroid/view/animation/Animation;
    .registers 8

    .line 118
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_e

    if-eq p2, v2, :cond_e

    goto :goto_58

    .line 122
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v2, :cond_58

    .line 124
    invoke-static {p0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadWindowAnimationIfNeeded: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", transit="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformAnimationLoader"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-ne p2, v3, :cond_50

    const p1, 0x10a0012

    goto :goto_53

    :cond_50
    const p1, 0x10a0010

    :goto_53
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_58
    :goto_58
    return-object v1
.end method


# virtual methods
.method public getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isFreeform()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isBubbleActivity()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public loadAnimationIfPossible()V
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformAnimationLoader;->loadMinimizeAnimationIfNeeded()V

    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/AnimationLoader;->isAnimationLoaded()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 82
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/AnimationLoader;->getTransit()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, -0x1

    if-eq v0, v1, :cond_34

    const/16 v1, 0x19

    if-eq v0, v1, :cond_24

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_34

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_24

    packed-switch v0, :pswitch_data_52

    move v0, v2

    goto :goto_43

    .line 97
    :cond_24
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x10a000e

    goto :goto_43

    :cond_30
    const v0, 0x10a0010

    goto :goto_43

    .line 88
    :cond_34
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isEnterTransit()Z

    move-result v0

    if-eqz v0, :cond_40

    const v0, 0x10a0012

    goto :goto_43

    :cond_40
    const v0, 0x10a0014

    :goto_43
    if-eq v0, v2, :cond_50

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x6
        :pswitch_34
        :pswitch_24
        :pswitch_34
        :pswitch_24
        :pswitch_34
        :pswitch_24
    .end packed-switch
.end method

.method public final loadMinimizeAnimation()Landroid/view/animation/Animation;
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingTransitionState;->getSurfaceInset()Landroid/graphics/Rect;

    move-result-object v2

    .line 161
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 163
    iget-boolean v4, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPointReported:Z

    if-eqz v4, :cond_2b

    .line 164
    iget-object v4, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_5c

    .line 166
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-gt v4, v5, :cond_4c

    .line 168
    iget-object v4, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_57

    .line 170
    :cond_4c
    iget-object v4, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 172
    :goto_57
    iget-object v4, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerDefaultPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_5c
    const/4 v4, 0x0

    .line 176
    invoke-static {v4, v3, v1, v2}, Lcom/android/server/wm/MultiTaskingTransitionController;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 179
    new-instance v2, Lcom/android/server/wm/FreeformAnimationLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/FreeformAnimationLoader$1;-><init>(Lcom/android/server/wm/FreeformAnimationLoader;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v1
.end method

.method public final loadMinimizeAnimationIfNeeded()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 147
    iget v0, v0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformAnimationLoader;->loadMinimizeAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 150
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformAnimationLoader;->loadRestoreAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_20

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_20
    return-void
.end method

.method public final loadRestoreAnimation()Landroid/view/animation/Animation;
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingTransitionState;->getSurfaceInset()Landroid/graphics/Rect;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 199
    iget-boolean v3, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPointReported:Z

    if-eqz v3, :cond_1b

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_28

    .line 202
    :cond_1b
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, p0, v3}, Landroid/graphics/PointF;->set(FF)V

    :goto_28
    const/4 p0, 0x1

    .line 204
    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wm/MultiTaskingTransitionController;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/server/wm/FreeformAnimationLoader;->mFreeformContainerPointReported:Z

    return-void
.end method
