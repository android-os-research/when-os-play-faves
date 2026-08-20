.class public Lcom/android/server/wm/Transition$Targets;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Targets"
.end annotation


# instance fields
.field public final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mDepthFactor:I

.field public mRemovedTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1813
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Transition$Targets-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/Transition$Targets;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 1821
    iget v0, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    if-nez v0, :cond_10

    .line 1822
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    .line 1824
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    move-object v1, p1

    :cond_15
    :goto_15
    if-eqz v1, :cond_21

    .line 1827
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1829
    iget v2, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    add-int/2addr v0, v2

    goto :goto_15

    .line 1833
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getListSortedByZ()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 1851
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1852
    iget-object v1, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2c

    .line 1853
    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    rem-int/2addr v2, v3

    .line 1854
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1856
    :cond_2c
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1857
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3b
    if-ltz v1, :cond_49

    .line 1858
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :cond_49
    return-object p0
.end method

.method public remove(ILcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1838
    iget-object p1, p0, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-nez p1, :cond_10

    .line 1839
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    .line 1841
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public wasParticipated(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)Z"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz p0, :cond_13

    .line 1846
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
