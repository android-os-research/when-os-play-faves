.class public Lcom/android/server/CircularQueue;
.super Ljava/util/LinkedList;
.source "CircularQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final mArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mLimit:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    .line 35
    iput p1, p0, Lcom/android/server/CircularQueue;->mLimit:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Call of add(key) prohibited. Please call put(key, value) instead. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getElement(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 55
    :goto_9
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p2

    iget v0, p0, Lcom/android/server/CircularQueue;->mLimit:I

    if-le p2, v0, :cond_1c

    .line 56
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    :cond_1c
    return-object p1
.end method

.method public removeElement(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/server/CircularQueue;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
