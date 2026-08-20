.class public Lcom/android/server/am/FreecessPkgMap;
.super Ljava/lang/Object;
.source "FreecessPkgMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final mUserIdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getByUid(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getByUserId(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_c
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUidMap()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getUserIdMap()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 33
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1e

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 36
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1e
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p3
.end method

.method public remove(ILjava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 46
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 48
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    .line 49
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 50
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object p1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public sizeByUserId()I
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public totalSize()I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 81
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 82
    iget-object v3, p0, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v0

    .line 83
    :goto_14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    return v2
.end method
