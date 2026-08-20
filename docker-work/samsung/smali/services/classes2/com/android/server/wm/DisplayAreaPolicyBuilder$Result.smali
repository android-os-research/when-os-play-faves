.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mDisplayAreaGroupRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field public final mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field public final mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$am8Z89jNU7AG9qZKA6dA1j44b84(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->lambda$new$0(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/RootDisplayArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 798
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V

    .line 799
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    .line 800
    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 803
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    new-instance p2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz p1, :cond_27

    if-eqz p5, :cond_1f

    goto :goto_24

    .line 813
    :cond_1f
    new-instance p5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;

    invoke-direct {p5, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    :goto_24
    iput-object p5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    return-void

    .line 808
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No display area with FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/RootDisplayArea;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;)V"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v1, 0x0

    .line 858
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 860
    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v3

    if-ne v3, p1, :cond_20

    .line 861
    iget-object v3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3

    .line 804
    iget v0, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return-object p0
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowToken;)V
    .registers 2

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    .line 819
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method public findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 824
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    .line 825
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 6

    .line 831
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 868
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getDisplayAreas(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 849
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 850
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v2, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation

    .line 837
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 839
    :goto_d
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 840
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    iget-object v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 842
    :cond_25
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 874
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method
