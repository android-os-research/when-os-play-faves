.class public Lcom/android/server/ssrm/ConcurrentList;
.super Ljava/lang/Object;
.source "ConcurrentList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 19
    iput-object p1, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    .line 200
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 89
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    nop

    .line 91
    return v0

    .line 89
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 135
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 136
    nop

    .line 137
    return v0

    .line 135
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 136
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 123
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    nop

    .line 125
    return v0

    .line 123
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    throw v0
.end method

.method public clear()V
    .registers 3

    .line 166
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    .line 170
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 46
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 48
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    return v0

    .line 48
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 112
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    return v0

    .line 112
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 180
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 178
    return-object v0

    .line 180
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 216
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 218
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 220
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    return v0

    .line 220
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 34
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 38
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    return v0

    .line 38
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 58
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    return-object v0

    .line 58
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 228
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 230
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    return v0

    .line 230
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 231
    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 240
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 238
    return-object v0

    .line 240
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 241
    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 250
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 248
    return-object v0

    .line 250
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 251
    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 210
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    return-object v0

    .line 210
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 101
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    nop

    .line 103
    return v0

    .line 101
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 147
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    nop

    .line 149
    return v0

    .line 147
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 157
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1a

    .line 159
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    nop

    .line 161
    return v0

    .line 159
    .end local v0    # "ret":Z
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 188
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 190
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 188
    return-object v0

    .line 190
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    throw v0
.end method

.method public size()I
    .registers 3

    .line 24
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 28
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    return v0

    .line 28
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 258
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 260
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 258
    return-object v0

    .line 260
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 64
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 68
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    return-object v0

    .line 68
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/server/ssrm/ConcurrentList;, "Lcom/android/server/ssrm/ConcurrentList<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_9
    iget-object v0, p0, Lcom/android/server/ssrm/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 78
    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    return-object v0

    .line 78
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/android/server/ssrm/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw v0
.end method
