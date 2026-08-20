.class public Lcom/android/server/am/mars/util/ConcurrentList;
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
.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 17
    iput-object p1, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 196
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    .line 198
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 87
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 133
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 134
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 119
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 121
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw p1
.end method

.method public clear()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    .line 168
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 46
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47
    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 110
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 176
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 178
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    throw p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 216
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 218
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 219
    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 36
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_19
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
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

    .line 52
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 56
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1e
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 226
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 228
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 229
    throw p1
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

    .line 234
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 236
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 238
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_1e
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 239
    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 248
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_1e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 208
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 99
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 145
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 157
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 158
    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 188
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    throw p1
.end method

.method public size()I
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 26
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_19
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 256
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 258
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 259
    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 66
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_19
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 74
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 76
    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/ConcurrentList;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 77
    throw p1
.end method
