.class public Lcom/android/server/utils/quota/UptcMap;
.super Ljava/lang/Object;
.source "UptcMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mData:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$00B9qFKQUzR27rKbiE8Aodq5dt8(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/utils/quota/UptcMap;->lambda$forEach$0(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    return-void
.end method

.method public static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V
    .registers 4

    .line 159
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 160
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :cond_14
    invoke-virtual {v0, p3, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    return-void
.end method

.method public contains(ILjava/lang/String;)Z
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public contains(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_12

    .line 58
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public delete(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    return-object p0
.end method

.method public delete(I)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public delete(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_18

    .line 70
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-nez p3, :cond_18

    .line 72
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/android/server/utils/quota/UptcMap;->userCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_32

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/server/utils/quota/UptcMap;->getUserIdAtIndex(I)I

    move-result v3

    .line 170
    invoke-virtual {p0, v3}, Lcom/android/server/utils/quota/UptcMap;->packageCountForUser(I)I

    move-result v4

    move v5, v1

    :goto_11
    if-ge v5, v4, :cond_2f

    .line 172
    invoke-virtual {p0, v2, v5}, Lcom/android/server/utils/quota/UptcMap;->getPackageNameAtIndex(II)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {p0, v3, v6}, Lcom/android/server/utils/quota/UptcMap;->tagCountForUserAndPackage(ILjava/lang/String;)I

    move-result v7

    move v8, v1

    :goto_1c
    if-ge v8, v7, :cond_2c

    .line 176
    invoke-virtual {p0, v2, v5, v8}, Lcom/android/server/utils/quota/UptcMap;->getTagAtIndex(III)Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-virtual {p0, v3, v6, v9}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v3, v6, v9, v10}, Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;->accept(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_32
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/utils/quota/UptcMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    return-object p0
.end method

.method public get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_f

    .line 95
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_16

    .line 106
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_16

    .line 112
    :cond_11
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 108
    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 109
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p4
.end method

.method public final getPackageNameAtIndex(II)Ljava/lang/String;
    .registers 3

    .line 123
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getTagAtIndex(III)Ljava/lang/String;
    .registers 4

    .line 131
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getUserIdAtIndex(I)I
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public packageCountForUser(I)I
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result p0

    return p0
.end method

.method public tagCountForUserAndPackage(ILjava/lang/String;)I
    .registers 3

    .line 146
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_f

    .line 147
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public userCount()I
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result p0

    return p0
.end method

.method public valueAt(III)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)TT;"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_f

    .line 154
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method
