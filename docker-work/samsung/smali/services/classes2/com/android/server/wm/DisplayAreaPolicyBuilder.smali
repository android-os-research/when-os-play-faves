.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;,
        Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;
    }
.end annotation


# instance fields
.field public final mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

.field public mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
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

.field public mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;
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
.method public constructor <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    return-void
.end method

.method public static containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 259
    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 260
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    return v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return v0
.end method

.method public static validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " is not unique."

    if-eqz v1, :cond_f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    const/16 v1, 0x4e21

    if-gt v0, v1, :cond_eb

    const/4 v0, 0x0

    move v3, v0

    .line 294
    :goto_22
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 295
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    iget v4, v4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    if-gt v4, v1, :cond_51

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 301
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TaskDisplayArea declared in the policy should nothave an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskDisplayArea must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_73
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 308
    :goto_78
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e7

    .line 309
    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->getId()I

    move-result v4

    .line 310
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 314
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    if-gt v4, v1, :cond_a9

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 319
    :cond_a9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Feature should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_b1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Feature below the same root must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_cb
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Feature must not have same id with any RootDisplayArea or TaskDisplayArea, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is used"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_e7
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 289
    :cond_eb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RootDisplayArea should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_f3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RootDisplayArea must have unique id, but id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDisplayAreaGroupHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
    .registers 10

    .line 330
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validate()V

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V

    .line 334
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 336
    :goto_16
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 338
    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V

    .line 339
    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 342
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    if-nez v0, :cond_44

    .line 343
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;-><init>(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    .line 346
    :cond_44
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    return-object p0
.end method

.method public setSelectRootForWindowFunc(Ljava/util/function/BiFunction;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public setSelectTaskDisplayAreaFunc(Ljava/util/function/Function;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    return-object p0
.end method

.method public final validate()V
    .registers 10

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    if-eqz v0, :cond_93

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 215
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 216
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v4

    .line 218
    :goto_20
    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v5

    move v6, v4

    .line 219
    :goto_27
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7e

    .line 220
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    .line 221
    invoke-static {v7, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    .line 223
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_76

    if-eqz v2, :cond_55

    .line 229
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v8

    if-nez v8, :cond_4d

    goto :goto_5e

    .line 230
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one DisplayArea hierarchy can contain the IME container"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_55
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->-$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    if-eqz v2, :cond_5d

    move v2, v3

    goto :goto_5e

    :cond_5d
    move v2, v4

    :goto_5e
    if-eqz v5, :cond_6f

    .line 238
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v7

    if-nez v7, :cond_67

    goto :goto_73

    .line 239
    :cond_67
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only one TaskDisplayArea can have the feature id of FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_6f
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v5

    :goto_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 224
    :cond_76
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DisplayAreaGroup must contain at least one TaskDisplayArea."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    if-eqz v2, :cond_8b

    if-eqz v5, :cond_83

    return-void

    .line 252
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There must be a default TaskDisplayArea with id of FEATURE_DEFAULT_TASK_CONTAINER."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_8b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IME container must be set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_93
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Root must be set for the display area policy."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
