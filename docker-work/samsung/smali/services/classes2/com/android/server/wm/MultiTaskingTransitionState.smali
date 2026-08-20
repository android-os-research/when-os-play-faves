.class public Lcom/android/server/wm/MultiTaskingTransitionState;
.super Ljava/lang/Object;
.source "MultiTaskingTransitionState.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "MultiTaskingTransitionState"


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public mAnimationLoaded:Z

.field public mContainer:Lcom/android/server/wm/WindowContainer;

.field public mEnter:Z

.field public final mFrame:Landroid/graphics/Rect;

.field public final mSurfaceInset:Landroid/graphics/Rect;

.field public mTask:Lcom/android/server/wm/Task;

.field public mTransit:I

.field public mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mFrame:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mSurfaceInset:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransit:I

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    sget-object v0, Lcom/android/server/wm/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    if-ne p0, v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method public getContainer()Lcom/android/server/wm/WindowContainer;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 201
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/server/wm/ChangeTransitionController;->getSplitCornerRadius(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getFrame()Landroid/graphics/Rect;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSurfaceInset()Landroid/graphics/Rect;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mSurfaceInset:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getTransit()I
    .registers 1

    .line 79
    iget p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransit:I

    return p0
.end method

.method public init(IZLcom/android/server/wm/WindowContainer;Lcom/android/internal/policy/TransitionAnimation;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 58
    iput p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransit:I

    .line 59
    iput-boolean p2, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mEnter:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 61
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 62
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    goto :goto_2e

    .line 63
    :cond_17
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 64
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    goto :goto_2e

    .line 66
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    .line 68
    :goto_2e
    iput-object p4, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 69
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p6, :cond_3c

    .line 71
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mSurfaceInset:Landroid/graphics/Rect;

    invoke-virtual {p1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3c
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimationLoaded:Z

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public isActivity()Z
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isAnimationLoaded()Z
    .registers 1

    .line 184
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimationLoaded:Z

    return p0
.end method

.method public isBubbleActivity()Z
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-nez p0, :cond_e

    goto :goto_26

    .line 118
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_26

    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 v1, 0x1

    :cond_26
    :goto_26
    return v1
.end method

.method public isDexCompatMode()Z
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isDexMode()Z
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isDisplayAreaContainer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    return p0

    .line 132
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isDisplayAreaContainer()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isEnterTransit()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mEnter:Z

    return p0
.end method

.method public isFreeform()Z
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isFullscreen()Z
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSplit()Z
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSplitEmbedded()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result p0

    return p0
.end method

.method public isTransit(I)Z
    .registers 2

    .line 83
    iget p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransit:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public loadAnimationFromResources(I)Landroid/view/animation/Animation;
    .registers 3

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const-string v0, "android"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 189
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mEnter:Z

    const/4 v2, -0x1

    .line 191
    iput v2, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransit:I

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mTransitAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 194
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mSurfaceInset:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 195
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    .line 196
    iput-boolean v1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimationLoaded:Z

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    if-nez p1, :cond_b

    const-string p0, "MultiTaskingTransitionState"

    const-string/jumbo p1, "setAnimation: null cannot be set"

    .line 164
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingTransitionState;->mAnimationLoaded:Z

    return-void
.end method
