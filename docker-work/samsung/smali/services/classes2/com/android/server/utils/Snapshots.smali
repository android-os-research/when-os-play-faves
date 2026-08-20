.class public Lcom/android/server/utils/Snapshots;
.super Ljava/lang/Object;
.source "Snapshots.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TE;>;",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 55
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 57
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void

    .line 53
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "copy destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseSetArray<",
            "TE;>;",
            "Landroid/util/SparseSetArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_27

    .line 72
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_26

    .line 74
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v3

    move v4, v1

    :goto_13
    if-ge v4, v3, :cond_23

    .line 76
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    return-void

    .line 70
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "copy destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 37
    instance-of v0, p0, Lcom/android/server/utils/Snappable;

    if-eqz v0, :cond_a

    .line 38
    check-cast p0, Lcom/android/server/utils/Snappable;

    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static snapshot(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/server/utils/Snappable<",
            "TE;>;>(",
            "Landroid/util/SparseArray<",
            "TE;>;",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_24

    .line 108
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_23

    .line 110
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Snappable;

    invoke-interface {v3}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Snappable;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    return-void

    .line 106
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static snapshot(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 6

    .line 87
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 90
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 92
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void

    .line 88
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static snapshot(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/server/utils/Snappable<",
            "TE;>;>(",
            "Landroid/util/SparseSetArray<",
            "TE;>;",
            "Landroid/util/SparseSetArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 125
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_2e

    .line 127
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v3

    move v4, v1

    :goto_13
    if-ge v4, v3, :cond_2b

    .line 129
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/utils/Snappable;

    invoke-interface {v6}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/utils/Snappable;

    invoke-virtual {p0, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2e
    return-void

    .line 123
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
