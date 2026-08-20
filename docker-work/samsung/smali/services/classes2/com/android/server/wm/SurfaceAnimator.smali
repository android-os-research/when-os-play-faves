.class public Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimator$Animatable;,
        Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;,
        Lcom/android/server/wm/SurfaceAnimator$AnimationType;
    }
.end annotation


# static fields
.field public static final ANIMATION_TYPE_ALL:I = -0x1

.field public static final ANIMATION_TYPE_APP_TRANSITION:I = 0x1

.field public static final ANIMATION_TYPE_DIMMER:I = 0x4

.field public static final ANIMATION_TYPE_INSETS_CONTROL:I = 0x20

.field public static final ANIMATION_TYPE_NONE:I = 0x0

.field public static final ANIMATION_TYPE_RECENTS:I = 0x8

.field public static final ANIMATION_TYPE_SCREEN_ROTATION:I = 0x2

.field public static final ANIMATION_TYPE_STARTING_REVEAL:I = 0x80

.field public static final ANIMATION_TYPE_TOKEN_TRANSFORM:I = 0x40

.field public static final ANIMATION_TYPE_WINDOW_ANIMATION:I = 0x10

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field public mAnimationCancelledCallback:Ljava/lang/Runnable;

.field public mAnimationFinished:Z

.field public mAnimationStartDelayed:Z

.field public mAnimationType:I

.field public final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public static synthetic $r8$lambda$4PiCdaEsT4mA6LQVhqpeM5EoU9c(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$1(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRxTVOJy8fX752UbrFno9INW9hE(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$0(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 112
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 113
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/server/wm/SurfaceAnimator;->getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-void
.end method

.method public static animationTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_4f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_48

    const/4 v0, 0x4

    if-eq p0, v0, :cond_45

    const/16 v0, 0x8

    if-eq p0, v0, :cond_41

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3a

    const/16 v0, 0x40

    if-eq p0, v0, :cond_36

    const/16 v0, 0x80

    if-eq p0, v0, :cond_32

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    const-string/jumbo p0, "starting_reveal"

    return-object p0

    :cond_36
    const-string/jumbo p0, "token_transform"

    return-object p0

    :cond_3a
    const-string p0, "insets_animation"

    return-object p0

    :cond_3d
    const-string/jumbo p0, "window_animation"

    return-object p0

    :cond_41
    const-string/jumbo p0, "recents_animation"

    return-object p0

    :cond_45
    const-string p0, "dimmer"

    return-object p0

    :cond_48
    const-string/jumbo p0, "screen_rotation"

    return-object p0

    :cond_4c
    const-string p0, "app_transition"

    return-object p0

    :cond_4f
    const-string p0, "none"

    return-object p0
.end method

.method public static createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "IIIIIZ",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Landroid/view/SurfaceControl;"
        }
    .end annotation

    .line 493
    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reparenting to leash, surface="

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", leashParent="

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_34
    const-string v0, ""

    :goto_36
    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    const-string v0, "WindowManager"

    .line 493
    invoke-static {v0, p9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object p9

    .line 503
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p9, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - animation-leash of "

    invoke-virtual {p9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {p3}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 511
    invoke-virtual {p0, p8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p3, "SurfaceAnimator.createAnimationLeash"

    .line 513
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 522
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 526
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "makeSurface duration="

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p9, " leash="

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p2, p0, p4, p5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    int-to-float p3, p6

    int-to-float p4, p7

    .line 532
    invoke-virtual {p2, p0, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 533
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-eqz p8, :cond_b0

    const/4 p3, 0x0

    goto :goto_b2

    :cond_b0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 534
    :goto_b2
    invoke-virtual {p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 536
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method private synthetic lambda$getFinishedCallback$0(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p1, v0, :cond_5

    return-void

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    if-eqz p2, :cond_16

    .line 140
    invoke-interface {p2, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_16
    if-eqz v0, :cond_1b

    .line 143
    invoke-interface {v0, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$getFinishedCallback$1(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v1, :cond_1e

    .line 123
    iget-object p0, v1, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 124
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 127
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p3, v1, :cond_27

    .line 128
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 130
    :cond_27
    :try_start_27
    new-instance v1, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    .line 148
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p1, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 149
    invoke-interface {p3, v1}, Lcom/android/server/wm/AnimationAdapter;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 150
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3d
    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 153
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z
    .registers 12

    .line 443
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 444
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 445
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1a

    if-eqz v2, :cond_18

    .line 453
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    move v2, v4

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    if-eqz v2, :cond_75

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reparenting to original parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", destroy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", surface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_55

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_57

    :cond_55
    const-string v6, ""

    :goto_57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    .line 457
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_75

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 470
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move v3, v4

    :cond_75
    if-eqz p3, :cond_7b

    .line 475
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move v3, v4

    :cond_7b
    if-eqz v2, :cond_81

    .line 482
    invoke-interface {p1, p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_82

    :cond_81
    move v4, v3

    :goto_82
    return v4
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    return-void
.end method

.method public final cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .registers 12

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling animation restarting="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", leash="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 369
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 373
    :cond_46
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x17b6e625

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 378
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 379
    iget v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 380
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 382
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 383
    iget-object v6, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 384
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    if-eqz v1, :cond_92

    .line 386
    iget-boolean v7, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-nez v7, :cond_84

    if-eqz p3, :cond_84

    .line 387
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    if-eqz v5, :cond_84

    .line 389
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_84
    if-nez p2, :cond_92

    .line 393
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v5, :cond_8d

    .line 394
    invoke-interface {v5, v3, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_8d
    if-eqz v4, :cond_92

    .line 397
    invoke-interface {v4, v3, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_92
    if-eqz p3, :cond_a3

    if-eqz v6, :cond_99

    .line 404
    invoke-virtual {v6, p1, v2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_99
    if-eqz v0, :cond_a3

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 408
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_a3
    if-nez p2, :cond_a7

    .line 413
    iput-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    :cond_a7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 561
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_2e

    const-string v0, " mAnimationStartDelayed=true"

    goto :goto_30

    :cond_2e
    const-string v0, ""

    :goto_30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Animation: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 565
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz p0, :cond_58

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 549
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_10

    const-wide v1, 0x10b00000003L

    .line 551
    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 553
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    const-wide v1, 0x10b00000001L

    .line 554
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1c
    const-wide v0, 0x10800000002L

    .line 556
    iget-boolean p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 557
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public endDelayingAnimationStart()V
    .registers 6

    .line 241
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_1f

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_1f

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 246
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    :cond_1f
    return-void
.end method

.method public getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    return-object p0
.end method

.method public getAnimationType()I
    .registers 1

    .line 260
    iget p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    return p0
.end method

.method public final getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 3

    .line 119
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-object v0
.end method

.method public hasLeash()Z
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAnimating()Z
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isAnimationStartDelayed()Z
    .registers 1

    .line 354
    iget-boolean p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    return p0
.end method

.method public reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 420
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    const/4 v1, 0x0

    .line 421
    iput v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 422
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 423
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v2, :cond_1c

    xor-int/lit8 v3, p2, 0x1

    .line 426
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 428
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v2, :cond_21

    return-void

    .line 432
    :cond_21
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {p1, v0, v2, p2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result p1

    .line 434
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    if-eqz p1, :cond_32

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_32
    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 220
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p7

    const/4 v14, 0x1

    .line 178
    invoke-virtual {v0, v11, v14, v14}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    move-object/from16 v1, p2

    .line 179
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 180
    iput v12, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    move-object/from16 v1, p5

    .line 181
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-object/from16 v1, p6

    .line 182
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 183
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const-string v15, "WindowManager"

    if-nez v2, :cond_2d

    const-string v1, "Unable to start animation, surface is null or no children."

    .line 185
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    return-void

    :cond_2d
    const/4 v10, 0x0

    if-eqz p8, :cond_35

    .line 189
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/SurfaceFreezer;->takeLeashForAnimation()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_36

    :cond_35
    move-object v1, v10

    :goto_36
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_61

    .line 191
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 192
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceWidth()I

    move-result v5

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v3}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v16, v9

    move/from16 v9, p3

    move-object/from16 v10, v16

    .line 191
    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 194
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2, v11, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 196
    :cond_61
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v1, v11, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 197
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_85

    .line 198
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v1, :cond_84

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xcd1d1a4

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_84
    return-void

    :cond_85
    const/4 v5, 0x0

    .line 201
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v1, v3, v11, v12, v4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 202
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 203
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 204
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 205
    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    const-string v6, ""

    invoke-interface {v4, v3, v6}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 206
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v3, :cond_c5

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x756ab7bd

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v1, v7, v14

    invoke-static {v4, v6, v2, v5, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c5
    if-eqz v13, :cond_e9

    .line 209
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/SurfaceFreezer;->takeSnapshotForAnimation()Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-nez v1, :cond_e6

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No snapshot target to start animation on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_e6
    invoke-virtual {v1, v11, v13, v12}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;I)V

    :cond_e9
    return-void
.end method

.method public startDelayingAnimationStart()V
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    :cond_9
    return-void
.end method

.method public transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V
    .registers 8

    .line 315
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    const-string v2, "WindowManager"

    if-eqz v0, :cond_b4

    if-nez v1, :cond_19

    goto/16 :goto_b4

    .line 324
    :cond_19
    iget-boolean v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    if-eqz v3, :cond_37

    .line 325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to transfer animation, because "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " animation is finished"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 331
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transferAnimation, surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v4, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6a

    :cond_68
    const-string v4, ""

    :goto_6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x1

    .line 338
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 339
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 340
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 341
    iget v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iput v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 342
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 343
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 346
    invoke-virtual {p1, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 348
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 349
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, v2, v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 350
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b4
    :goto_b4
    const-string p1, "Unable to transfer animation, surface or parent is null"

    .line 321
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    return-void
.end method
