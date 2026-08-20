.class public Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackDelegate"
.end annotation


# instance fields
.field public mClientCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mLock:Ljava/lang/Object;

.field public mWatcherCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionWatcherCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 769
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 770
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 771
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 4

    .line 781
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 8

    if-nez p1, :cond_a

    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Tried to dispatch start notification for a null media projection. Ignoring!"

    .line 800
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_d
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 806
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v3

    .line 807
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;

    invoke-direct {v5, v3, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 809
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw p0
.end method

.method public dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 8

    if-nez p1, :cond_a

    const-string p0, "MediaProjectionManagerService"

    const-string p1, "Tried to dispatch stop notification for a null media projection. Ignoring!"

    .line 814
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 818
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_d
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionCallback;

    .line 820
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;

    invoke-direct {v4, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;-><init>(Landroid/media/projection/IMediaProjectionCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 823
    :cond_2e
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 824
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v3

    .line 825
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    invoke-direct {v5, v3, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    .line 827
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_55

    throw p0
.end method

.method public remove(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
