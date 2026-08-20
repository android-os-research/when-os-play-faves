.class public Lcom/android/server/wm/DisplayArea$Tokens;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field public final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public mLastKeyguardForcedOrientation:I

.field public final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4nbBjlAcYfx_-3TI9_4R5YYtuWg(Lcom/android/server/wm/DisplayArea$Tokens;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->lambda$new$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    .line 604
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 5

    .line 608
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 564
    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 566
    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;-><init>()V

    .line 567
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    .line 569
    new-instance p1, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayArea$Tokens;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 570
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_c

    goto :goto_63

    .line 573
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 574
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 579
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 581
    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v2

    if-eqz v2, :cond_34

    return v1

    .line 586
    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 587
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isUnoccluding()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 588
    invoke-virtual {p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result p0

    if-eqz p0, :cond_4a

    move p0, v3

    goto :goto_4b

    :cond_4a
    move p0, v1

    .line 591
    :goto_4b
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_53

    if-eqz p0, :cond_54

    :cond_53
    return v3

    .line 595
    :cond_54
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_63

    const/4 p1, 0x3

    if-eq p0, p1, :cond_63

    const/4 p1, -0x2

    if-ne p0, p1, :cond_62

    goto :goto_63

    :cond_62
    return v3

    :cond_63
    :goto_63
    return v1
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method public final asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 563
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getOrientation(I)I
    .registers 15

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 618
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_b

    return v2

    .line 623
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_14

    return p1

    .line 628
    :cond_14
    iget-object p1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 629
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x63d29d4b

    const/16 v10, 0x14

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v3

    invoke-static {v8, v9, v10, v0, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eq p1, v2, :cond_5a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5a

    .line 635
    iput p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    goto :goto_5c

    .line 637
    :cond_5a
    iget p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 640
    :cond_5c
    :goto_5c
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return p1
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 563
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 563
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 563
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .registers 1

    .line 563
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->onUnfrozen()V

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 652
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method
