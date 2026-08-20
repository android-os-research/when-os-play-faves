.class public Lokhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field public final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field public removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field public final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 3

    .line 731
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .line 742
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 744
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 746
    :try_start_9
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v2, v2, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    monitor-exit v0

    return v3

    .line 748
    :cond_12
    :goto_12
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 749
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 750
    iget-boolean v4, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v4, :cond_27

    goto :goto_12

    .line 751
    :cond_27
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_12

    .line 753
    :cond_2e
    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 754
    monitor-exit v0

    return v1

    .line 756
    :cond_32
    monitor-exit v0

    return v3

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 731
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$3;->next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 3

    .line 762
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 763
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    .line 764
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0

    .line 762
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .registers 4

    .line 769
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 771
    :try_start_5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$3;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_13
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v0

    .line 776
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    throw v0

    :catch_13
    :goto_13
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void

    .line 769
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "remove() before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
