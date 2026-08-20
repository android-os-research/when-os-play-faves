.class public Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public mDimAnimationLayer:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KdND-2gT2xeKzylrUe0uYQl7NPw(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DimAnimator;->lambda$canCreateDimAnimationLayer$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/android/server/wm/WindowContainer;",
            ">(",
            "Lcom/android/server/wm/WindowContainer;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public static synthetic lambda$canCreateDimAnimationLayer$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;)Z
    .registers 7

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_f

    return v2

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_20

    return v2

    :cond_20
    if-eqz p3, :cond_38

    .line 66
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    return v2

    .line 70
    :cond_2f
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {p3}, Lcom/android/internal/policy/TransitionAnimation;->isDefaultPackageAnimRes(I)Z

    move-result p3

    if-nez p3, :cond_38

    return v2

    .line 75
    :cond_38
    iget-object p3, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez p3, :cond_43

    return v2

    :cond_43
    const/4 p3, 0x1

    if-eq p1, p3, :cond_4a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4a

    goto :goto_6c

    :cond_4a
    if-eqz p2, :cond_6c

    .line 89
    iget-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_6c

    iget-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_6c

    .line 93
    :cond_5d
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    new-instance p1, Lcom/android/server/wm/DimAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DimAnimator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_6b

    return v2

    :cond_6b
    return p3

    :cond_6c
    :goto_6c
    return v2
.end method

.method public createDimAnimationLayer()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_71

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DimAnimationLayer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 114
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 116
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowContainer#createAnimatingDimLayer"

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 120
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_71

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDimAnimationLayer, mDimAnimationLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", caller="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x6

    .line 122
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-void
.end method

.method public createDimAnimationLayerIfNeeded(IZLandroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimAnimator;->canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/DimAnimator;->createDimAnimationLayer()V

    :cond_9
    return-void
.end method

.method public final createDimAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .registers 5

    .line 169
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object p0, p0, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadDimAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    .line 171
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    return-object v0
.end method

.method public finishDimAnimation(I)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 146
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishDimAnimation, mDimAnimationLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 148
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 147
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_67

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_5b
    if-eqz p0, :cond_67

    .line 161
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_5b

    :cond_67
    return-void
.end method

.method public startDimAnimation(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 129
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_34

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDimAnimation, mDimAnimationLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 131
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/DimAnimator;->createDimAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v3, 0x0

    .line 138
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 140
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_64
    return-void
.end method
