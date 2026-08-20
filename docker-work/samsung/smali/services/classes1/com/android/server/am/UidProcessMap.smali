.class public Lcom/android/server/am/UidProcessMap;
.super Ljava/lang/Object;
.source "UidProcessMap.java"


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
.field public final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_c
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMap()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TE;>;>;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

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

    .line 45
    iget-object v0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 48
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public putAll(Lcom/android/server/am/UidProcessMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/UidProcessMap<",
            "TE;>;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3b

    .line 99
    iget-object v1, p1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_26

    .line 102
    iget-object v1, p1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_38

    .line 104
    :cond_26
    iget-object v2, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3b
    return-void
.end method

.method public remove(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return-object v0

    .line 62
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_24

    .line 64
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 66
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_23
    return-object p2

    :cond_24
    return-object v0
.end method

.method public size()I
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
