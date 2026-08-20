.class public Lcom/android/server/remoteappmode/RemoteAppModeNotifier;
.super Ljava/lang/Object;
.source "RemoteAppModeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRemoteAppModeListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteAppModeListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRemoteAppModeListeners(Lcom/android/server/remoteappmode/RemoteAppModeNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notifyRemoteAppModeStateChanged(Z)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    .line 65
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->onRemoteAppModeStateChanged(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 61
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z
    .registers 13

    .line 30
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 31
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_32

    const/4 v2, 0x0

    .line 33
    :try_start_8
    new-instance v9, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_16

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;-><init>(Lcom/android/server/remoteappmode/RemoteAppModeNotifier;Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;II)V

    .line 37
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 38
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2d} :catch_30
    .catchall {:try_start_8 .. :try_end_2d} :catchall_32

    const/4 p0, 0x1

    .line 39
    :try_start_2e
    monitor-exit v0

    return p0

    .line 41
    :catch_30
    monitor-exit v0

    return v2

    :catchall_32
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier;->mRemoteAppModeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 50
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeNotifier$RemoteAppModeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 51
    monitor-exit v0

    return p0

    .line 53
    :cond_1e
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
