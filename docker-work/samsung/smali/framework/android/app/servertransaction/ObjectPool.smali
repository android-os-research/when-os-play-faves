.class Landroid/app/servertransaction/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# static fields
.field private static final blacklist MAX_POOL_SIZE:I = 0x32

.field private static final blacklist sPoolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/app/servertransaction/ObjectPoolItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sPoolSync:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ObjectPool;->sPoolSync:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ObjectPool;->sPoolMap:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/app/servertransaction/ObjectPoolItem;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 41
    .local p0, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Landroid/app/servertransaction/ObjectPool;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Landroid/app/servertransaction/ObjectPool;->sPoolMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 44
    .local v1, "itemPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ObjectPoolItem;

    monitor-exit v0

    return-object v2

    .line 47
    :cond_21
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 48
    .end local v1    # "itemPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static blacklist recycle(Landroid/app/servertransaction/ObjectPoolItem;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/app/servertransaction/ObjectPoolItem;",
            ">(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "item":Landroid/app/servertransaction/ObjectPoolItem;, "TT;"
    sget-object v0, Landroid/app/servertransaction/ObjectPool;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Landroid/app/servertransaction/ObjectPool;->sPoolMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 60
    .local v2, "itemPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v2, :cond_1e

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 66
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v1, :cond_36

    .line 67
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_2e

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 68
    :cond_2e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Trying to recycle already recycled item"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "item":Landroid/app/servertransaction/ObjectPoolItem;, "TT;"
    throw v4

    .line 72
    .end local v3    # "i":I
    .restart local p0    # "item":Landroid/app/servertransaction/ObjectPoolItem;, "TT;"
    :cond_36
    const/16 v3, 0x32

    if-ge v1, v3, :cond_3d

    .line 73
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v1    # "size":I
    .end local v2    # "itemPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3d
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method
