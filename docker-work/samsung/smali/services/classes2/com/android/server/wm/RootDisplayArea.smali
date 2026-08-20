.class public Lcom/android/server/wm/RootDisplayArea;
.super Lcom/android/server/wm/DisplayArea$Dimmable;
.source "RootDisplayArea.java"


# instance fields
.field public mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field public mFeatureToDisplayAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public mHasBuiltHierarchy:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 5

    .line 58
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/DisplayArea$Dimmable;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    return-object p0
.end method

.method public findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 4

    .line 115
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    aget-object p0, p0, p1

    return-object p0

    .line 126
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There shouldn\'t be WindowToken on APPLICATION_LAYER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    return-object p0
.end method

.method public isOrientationDifferentFromDisplay()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    .line 139
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    .line 140
    iput-object p2, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    .line 141
    iput-object p3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    return-void

    .line 136
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Root should only build the hierarchy once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 9

    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 84
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 86
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_46

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    .line 88
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    return-void

    .line 90
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There must be exactly one DisplayArea for the FEATURE_IME_PLACEHOLDER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 100
    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no FEATURE_IME_PLACEHOLDER in this root to place the IME container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v2, 0x7db

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    aput-object p1, v1, v2

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v1, 0x7dc

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    aput-object p1, p0, v0

    return-void
.end method
