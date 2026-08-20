.class public Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
.source "RealLocationTimeZoneProviderProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public static synthetic $r8$lambda$fmUzObkB4HDReIJSehsvfAiZtVE(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->lambda$trySendCurrentRequest$0(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmManagerProxy(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    const/4 p3, 0x0

    .line 63
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 64
    invoke-static {}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->createStopUpdatesRequest()Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 66
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.BIND_TIME_ZONE_PROVIDER_SERVICE"

    if-eqz p6, :cond_18

    .line 72
    invoke-static {p1, p4, p5, v0, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createUnsafeForTestsOnly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p3

    goto :goto_1e

    :cond_18
    const-string p3, "android.permission.INSTALL_LOCATION_TIME_ZONE_PROVIDER_SERVICE"

    .line 76
    invoke-static {p1, p4, p5, v0, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p3

    :goto_1e
    const-string p4, "RealLocationTimeZoneProviderProxy"

    .line 80
    invoke-static {p1, p2, p4, p3, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static synthetic lambda$trySendCurrentRequest$0(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;Landroid/os/IBinder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {p2}, Landroid/service/timezone/ITimeZoneProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProvider;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->sendUpdates()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 156
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->getInitializationTimeout()Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->getEventFilteringAgeThreshold()Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    move-object v1, p1

    .line 155
    invoke-interface/range {v0 .. v5}, Landroid/service/timezone/ITimeZoneProvider;->startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    goto :goto_22

    .line 159
    :cond_1f
    invoke-interface {v0}, Landroid/service/timezone/ITimeZoneProvider;->stopUpdates()V

    :goto_22
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 166
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    const-string/jumbo v0, "{RealLocationTimeZoneProviderProxy}"

    .line 167
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 170
    monitor-exit p2

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 108
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 112
    :try_start_8
    new-instance p2, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy-IA;)V

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 113
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onProviderBound()V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->trySendCurrentRequest()V

    .line 117
    monitor-exit p1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->unregister()V

    return-void
.end method

.method public onInitialize()V
    .registers 2

    .line 86
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->register()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 87
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to register binder proxy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onUnbind()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 124
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 127
    :try_start_9
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 128
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;->onProviderUnbound()V

    .line 129
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final register()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_d
    return v0
.end method

.method public final setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_b
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->trySendCurrentRequest()V

    .line 145
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final trySendCurrentRequest()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 151
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 152
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v2, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    invoke-interface {p0, v2}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
