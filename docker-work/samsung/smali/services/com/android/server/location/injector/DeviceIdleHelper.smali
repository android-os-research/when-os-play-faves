.class public abstract Lcom/android/server/location/injector/DeviceIdleHelper;
.super Ljava/lang/Object;
.source "DeviceIdleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;
    }
.end annotation


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 47
    invoke-virtual {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->registerInternal()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 49
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract isDeviceIdle()Z
.end method

.method public final notifyDeviceIdleChanged()V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->isDeviceIdle()Z

    move-result v0

    .line 63
    iget-object p0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

    .line 64
    invoke-interface {v1, v0}, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;->onDeviceIdleChanged(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public abstract registerInternal()V
.end method

.method public final declared-synchronized removeListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V
    .registers 3

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 56
    invoke-virtual {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->unregisterInternal()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 58
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract unregisterInternal()V
.end method
