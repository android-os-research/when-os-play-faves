.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/provider/AbstractLocationProvider;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_LOCATION_TAGS:Ljava/lang/String; = "android:location_allow_listed_tags"

.field public static final LOCATION_TAGS_SEPARATOR:Ljava/lang/String; = ";"

.field public static final RESET_DELAY_MS:J = 0x3e8L


# instance fields
.field public mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mFlushListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mName:Ljava/lang/String;

.field public mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mRequest:Landroid/location/provider/ProviderRequest;

.field public mResetter:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public static synthetic $r8$lambda$bDCegUCZCpToJ6eso4uu1CJjq-c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->lambda$onExtraCommand$1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yu0xVA1qJfubSKPOEyL-h8EblXE(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->lambda$onSetRequest$0(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)V
    .registers 10

    .line 103
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 105
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p3

    .line 106
    invoke-static {p1, p2, p3, p0, p6}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 109
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 112
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/provider/ProviderProperties;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setProperties(Landroid/location/provider/ProviderProperties;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Z)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setAllowed(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Landroid/location/LocationResult;)V
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;
    .registers 14

    .line 72
    new-instance v7, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/location/injector/Injector;)V

    .line 74
    invoke-virtual {v7}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->checkServiceResolves()Z

    move-result p0

    if-eqz p0, :cond_13

    return-object v7

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$onExtraCommand$1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {p2}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p2

    .line 225
    invoke-interface {p2, p0, p1}, Landroid/location/provider/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$onSetRequest$0(Landroid/location/provider/ProviderRequest;Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p1

    .line 185
    invoke-interface {p1, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method


# virtual methods
.method public final checkServiceResolves()Z
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 231
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0, p2}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_7
    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 125
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 127
    invoke-interface {p1, v1}, Landroid/location/provider/ILocationProvider;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 130
    sget-object p2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    .line 131
    invoke-interface {p1, p0}, Landroid/location/provider/ILocationProvider;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 133
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 223
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance p1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, p4}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 3

    .line 182
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 183
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$$ExternalSyntheticLambda0;-><init>(Landroid/location/provider/ProviderRequest;)V

    invoke-interface {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->unregister()V

    return-void
.end method

.method public onUnbind()V
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 140
    :try_start_4
    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 141
    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 146
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-nez v1, :cond_1e

    .line 147
    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V

    iput-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    .line 157
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_1e
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    .line 161
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 162
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_3b

    .line 164
    array-length p0, v1

    :goto_30
    if-ge v2, p0, :cond_3a

    .line 166
    aget-object v0, v1, v2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3a
    return-void

    :catchall_3b
    move-exception p0

    .line 162
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method
