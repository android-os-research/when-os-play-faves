.class public Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mSkipToFadeWindowToken:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/wm/FadeAnimationController;->mSkipToFadeWindowToken:Z

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 56
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    .line 58
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/ChangeTransitionController;->isFreezingDisplay()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/wm/FadeAnimationController;->mSkipToFadeWindowToken:Z

    const-string p0, "WindowManager"

    const-string p1, "FadeAnimationController: mSkipToFadeWindowToken=true"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .registers 5

    .line 121
    new-instance p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    return-object p0
.end method

.method public createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 3

    .line 127
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .registers 10

    if-eqz p2, :cond_98

    .line 88
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_98

    .line 93
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/FadeAnimationController;->mSkipToFadeWindowToken:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_31

    .line 94
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_30

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fadeWindowToken: skip t="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", show="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    .line 101
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeWindowToken, show="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animationType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p3}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", topWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 104
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_79

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7d

    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    :goto_7d
    if-eqz v0, :cond_88

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    move-result-object p0

    goto :goto_89

    :cond_88
    const/4 p0, 0x0

    :goto_89
    move-object v2, p0

    if-nez v2, :cond_8d

    return-void

    .line 115
    :cond_8d
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p2

    move v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    :cond_98
    :goto_98
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/FadeAnimationController;->mContext:Landroid/content/Context;

    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method
