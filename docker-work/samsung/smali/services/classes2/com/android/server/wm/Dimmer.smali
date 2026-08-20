.class public Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;,
        Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;,
        Lcom/android/server/wm/Dimmer$DimState;,
        Lcom/android/server/wm/Dimmer$DimAnimatable;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIM_ANIM_DURATION:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mDimState:Lcom/android/server/wm/Dimmer$DimState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mHost:Lcom/android/server/wm/WindowContainer;

.field public mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

.field public final mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 174
    new-instance v0, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 179
    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    return-void
.end method


# virtual methods
.method public final dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V
    .registers 7

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_13

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1b

    .line 229
    :cond_13
    iget-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 231
    :goto_1b
    iget-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 232
    iget-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p5}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    return-void
.end method

.method public dimAbove(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 260
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    return-void
.end method

.method public dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .registers 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    return-void
.end method

.method public dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;FI)V
    .registers 11

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IFI)V

    return-void
.end method

.method public dontAnimateExit()V
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    :cond_7
    return-void
.end method

.method public final getCornerRadius()F
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 368
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 369
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->getFreeformCornerRadiusLocked(I)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_22
    return v2
.end method

.method public final getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .registers 2

    if-nez p1, :cond_5

    const-wide/16 p0, 0x0

    return-wide p0

    .line 408
    :cond_5
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object p0

    if-nez p0, :cond_10

    const-wide/16 p0, 0xc8

    goto :goto_14

    .line 410
    :cond_10
    invoke-interface {p0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide p0

    :goto_14
    return-wide p0
.end method

.method public final getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_1c

    .line 197
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 198
    new-instance v1, Lcom/android/server/wm/Dimmer$DimState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez p1, :cond_1c

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z
    :try_end_14
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v0, "WindowManager"

    const-string v1, "OutOfResourcesException creating dim surface"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return-object p0
.end method

.method public isDimming()Z
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final makeDimLayer()Landroid/view/SurfaceControl;
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 184
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dim Layer for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string v0, "Dimmer.makeDimLayer"

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public resetDimStates()V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz p0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    :cond_b
    return-void
.end method

.method public final startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V
    .registers 12

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v4

    invoke-direct {v1, p4, p5, v4, v5}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;-><init>(FFJ)V

    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3, v1, p0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    move-object v2, p3

    .line 394
    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;->startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method

.method public final startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 384
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    return-void
.end method

.method public final startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    return-void
.end method

.method public stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_10

    .line 244
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 246
    iput-boolean p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    :cond_10
    return-void
.end method

.method public updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 323
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v2, :cond_29

    .line 324
    iget-boolean p2, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez p2, :cond_1e

    .line 325
    iget-object p2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 326
    iget-object p2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object p2, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_25

    .line 329
    :cond_1e
    iget-object p2, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/Dimmer;->startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return v1

    .line 335
    :cond_29
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_40

    instance-of v1, v0, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_40

    .line 337
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 338
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInSplitActivityMode()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 339
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->getActivityGroupBounds(Landroid/graphics/Rect;)V

    .line 344
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer;->getCornerRadius()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6c

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 354
    :cond_6c
    iget-object p2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, p2, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_83

    .line 355
    iput-boolean v1, p2, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 356
    iget-object p2, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 357
    iget-object p2, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/Dimmer;->startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    :cond_83
    return v1
.end method
