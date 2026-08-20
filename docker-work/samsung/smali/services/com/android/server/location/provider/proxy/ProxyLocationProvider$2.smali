.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onFlush(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 213
    iget-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 214
    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 216
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_15
    move-exception p0

    .line 215
    :try_start_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public run(Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_9
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 208
    invoke-interface {p1}, Landroid/location/provider/ILocationProvider;->flush()V

    return-void

    :catchall_17
    move-exception p0

    .line 207
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method
