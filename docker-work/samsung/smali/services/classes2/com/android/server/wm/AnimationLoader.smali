.class public abstract Lcom/android/server/wm/AnimationLoader;
.super Ljava/lang/Object;
.source "AnimationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AnimationLoader$AnimationLoaderType;
    }
.end annotation


# static fields
.field public static final ANIMATION_LOADER_TYPE_DEX:I = 0x3

.field public static final ANIMATION_LOADER_TYPE_DEX_COMPAT:I = 0x2

.field public static final ANIMATION_LOADER_TYPE_EMBED_ACTIVITY:I = 0x6

.field public static final ANIMATION_LOADER_TYPE_FREEFORM:I = 0x4

.field public static final ANIMATION_LOADER_TYPE_SPLIT:I = 0x1

.field public static final ANIMATION_LOADER_TYPE_SPLIT_ACTIVITY:I = 0x5

.field public static final INVALID_RESOURCE_ID:I = -0x1

.field public static final NO_ANIMATION:Landroid/view/animation/Animation;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mState:Lcom/android/server/wm/MultiTaskingTransitionState;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/android/server/wm/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionState;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/AnimationLoader;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/android/server/wm/MultiTaskingTransitionState;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    return-object p0
.end method

.method public getTransit()I
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->getTransit()I

    move-result p0

    return p0
.end method

.method public isAnimationLoaded()Z
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/AnimationLoader;->mState:Lcom/android/server/wm/MultiTaskingTransitionState;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionState;->isAnimationLoaded()Z

    move-result p0

    return p0
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadAnimationIfPossible()V
.end method

.method public shouldApplyNoAnimation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
