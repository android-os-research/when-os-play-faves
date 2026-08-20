.class public Lcom/android/server/utils/WatchedSparseIntArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseIntArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseIntArray;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 67
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseIntArray;Lcom/android/server/utils/WatchedSparseIntArray;)V
    .registers 7

    .line 313
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 316
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    .line 318
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 320
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 314
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(II)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    if-lez v0, :cond_e

    .line 239
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    :cond_e
    return-void
.end method

.method public copyFrom(Landroid/util/SparseIntArray;)V
    .registers 6

    .line 74
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->clear()V

    .line 75
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 77
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public copyKeys()[I
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p0

    return-object p0
.end method

.method public copyTo(Landroid/util/SparseIntArray;)V
    .registers 6

    .line 85
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public delete(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_10

    .line 124
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    :cond_10
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 266
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_f

    .line 267
    check-cast p1, Lcom/android/server/utils/WatchedSparseIntArray;

    .line 268
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)I
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public get(II)I
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOfKey(I)I
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public indexOfValue(I)I
    .registers 2

    .line 229
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public put(II)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    return-void
.end method

.method public removeAt(I)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    return-void
.end method

.method public setValueAt(II)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eq v0, p2, :cond_10

    .line 206
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    :cond_10
    return-void
.end method

.method public size()I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseIntArray;
    .registers 2

    .line 289
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot()Lcom/android/server/utils/WatchedSparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V
    .registers 2

    .line 300
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;Lcom/android/server/utils/WatchedSparseIntArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public untrackedStorage()Landroid/util/SparseIntArray;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public valueAt(I)I
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0
.end method
