.class public Lcom/android/server/remoteappmode/SecureAppNotifier;
.super Ljava/lang/Object;
.source "SecureAppNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mSecureAppChangedListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSecureAppChangedListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSecureAppChangedListeners(Lcom/android/server/remoteappmode/SecureAppNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notifySecuredAppLaunched(ILjava/lang/String;)V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 63
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    .line 68
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->onSecuredAppLaunched(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 64
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public notifySecuredAppRemoved(ILjava/lang/String;)V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 78
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    .line 83
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->onSecuredAppRemoved(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 79
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z
    .registers 13

    .line 33
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 34
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_32

    const/4 v2, 0x0

    .line 36
    :try_start_8
    new-instance v9, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_16

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;-><init>(Lcom/android/server/remoteappmode/SecureAppNotifier;Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;II)V

    .line 40
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2d} :catch_30
    .catchall {:try_start_8 .. :try_end_2d} :catchall_32

    const/4 p0, 0x1

    .line 42
    :try_start_2e
    monitor-exit v0

    return p0

    .line 44
    :catch_30
    monitor-exit v0

    return v2

    :catchall_32
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public releaseAllListeners()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_37

    .line 94
    :try_start_19
    iget-object v3, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2a} :catch_2b
    .catchall {:try_start_19 .. :try_end_2a} :catchall_37

    goto :goto_d

    :catch_2b
    move-exception v2

    .line 96
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d

    .line 100
    :cond_30
    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 101
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw p0
.end method

.method public unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 53
    iget-object v1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 54
    monitor-exit v0

    return p0

    .line 56
    :cond_1e
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
