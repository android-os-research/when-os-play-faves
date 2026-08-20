.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HierarchyBuilder"
.end annotation


# static fields
.field public static final LEAF_TYPE_IME_CONTAINERS:I = 0x2

.field public static final LEAF_TYPE_TASK_CONTAINERS:I = 0x1

.field public static final LEAF_TYPE_TOKENS:I


# instance fields
.field public final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field public final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field public final mTaskDisplayAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .registers 3

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-void
.end method

.method public static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/16 v1, 0x7db

    .line 628
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_18

    const/16 v1, 0x7dc

    .line 629
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-ne p1, p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method public final addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 614
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p0, :cond_25

    .line 617
    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 619
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v2, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iput-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 620
    iput v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 621
    iget-object v2, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    return-void
.end method

.method public addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 7

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 599
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 601
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 602
    iput v4, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 603
    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    return-void
.end method

.method public final build()V
    .registers 2

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method public final build(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 487
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 488
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 489
    new-array v4, v2, [Lcom/android/server/wm/DisplayArea$Tokens;

    .line 491
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    .line 493
    :goto_1d
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_38

    .line 494
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 518
    :cond_38
    new-array v7, v2, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 519
    new-instance v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 520
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 523
    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    :goto_4a
    if-ge v11, v10, :cond_82

    .line 527
    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move v13, v6

    move-object v14, v9

    :goto_56
    if-ge v13, v2, :cond_7e

    .line 530
    invoke-static {v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmWindowLayers(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v15

    aget-boolean v15, v15, v13

    if-eqz v15, :cond_79

    if-eqz v14, :cond_68

    .line 538
    iget-object v15, v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v6, v7, v13

    if-eq v15, v6, :cond_76

    .line 541
    :cond_68
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v6, v7, v13

    invoke-direct {v14, v12, v13, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 542
    aget-object v6, v7, v13

    iget-object v6, v6, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_76
    aput-object v14, v7, v13

    goto :goto_7a

    :cond_79
    move-object v14, v9

    :goto_7a
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_56

    :cond_7e
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_4a

    :cond_82
    move-object v10, v9

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_85
    if-ge v6, v2, :cond_c9

    .line 558
    invoke-static {v1, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v12

    if-eqz v10, :cond_99

    .line 562
    iget-object v13, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v14, v7, v6

    if-ne v13, v14, :cond_99

    if-eq v12, v11, :cond_96

    goto :goto_99

    :cond_96
    move-object/from16 v13, p1

    goto :goto_c4

    .line 565
    :cond_99
    :goto_99
    new-instance v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v11, v7, v6

    invoke-direct {v10, v9, v6, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 566
    aget-object v11, v7, v6

    iget-object v11, v11, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v12, v3, :cond_b8

    .line 571
    aget-object v11, v7, v6

    invoke-virtual {v0, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 572
    aget-object v11, v7, v6

    move-object/from16 v13, p1

    invoke-virtual {v0, v11, v13}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V

    .line 574
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    goto :goto_c3

    :cond_b8
    move-object/from16 v13, p1

    const/4 v11, 0x2

    if-ne v12, v11, :cond_c3

    .line 578
    iget-object v11, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v11, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 579
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    :cond_c3
    :goto_c3
    move v11, v12

    .line 582
    :goto_c4
    iput v6, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    .line 584
    :cond_c9
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 588
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v4, v2, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 592
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    return-void
.end method

.method public setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method public setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
