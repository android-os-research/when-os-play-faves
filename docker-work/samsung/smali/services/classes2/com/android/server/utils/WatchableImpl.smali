.class public Lcom/android/server/utils/WatchableImpl;
.super Ljava/lang/Object;
.source "WatchableImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;


# instance fields
.field public final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/utils/Watcher;",
            ">;"
        }
    .end annotation
.end field

.field public mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mObservers"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    return-void
.end method


# virtual methods
.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    if-nez v1, :cond_20

    .line 100
    iget-object v1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    .line 102
    iget-object v3, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Watcher;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/Watcher;->onChange(Lcom/android/server/utils/Watchable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 104
    :cond_1e
    monitor-exit v0

    return-void

    .line 98
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to change a sealed object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_28
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isSealed()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 4

    const-string v0, "observer may not be null"

    .line 46
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 48
    :try_start_8
    iget-object v1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 49
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public registeredObserverCount()I
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public seal()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 118
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    .line 119
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3

    const-string v0, "observer may not be null"

    .line 62
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 64
    :try_start_8
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method
