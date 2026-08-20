.class public Lcom/android/server/utils/WatchedSparseBooleanArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 67
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .registers 7

    .line 308
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 311
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1d

    .line 313
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 315
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 309
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(IZ)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 251
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public copyFrom(Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 74
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->clear()V

    .line 75
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 77
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public copyTo(Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 85
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public delete(I)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 261
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_f

    .line 262
    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 263
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Z
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public get(IZ)Z
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOfKey(I)I
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Z)I
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public put(IZ)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public removeAt(I)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public setKeyAt(II)V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    if-eq v0, p2, :cond_10

    .line 211
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->setKeyAt(II)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    :cond_10
    return-void
.end method

.method public setValueAt(IZ)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eq v0, p2, :cond_10

    .line 203
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    :cond_10
    return-void
.end method

.method public size()I
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanArray;
    .registers 2

    .line 284
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    .line 285
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .registers 2

    .line 295
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public untrackedStorage()Landroid/util/SparseBooleanArray;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public valueAt(I)Z
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    return p0
.end method
