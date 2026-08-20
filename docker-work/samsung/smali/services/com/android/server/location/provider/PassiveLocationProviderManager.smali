.class public Lcom/android/server/location/provider/PassiveLocationProviderManager;
.super Lcom/android/server/location/provider/LocationProviderManager;
.source "PassiveLocationProviderManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .registers 5

    const-string/jumbo v0, "passive"

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    return-void
.end method


# virtual methods
.method public calculateRequestDelayMillis(JLjava/util/Collection;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)J"
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getCurrentRequest()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string/jumbo p0, "registered"

    goto :goto_13

    :cond_10
    const-string/jumbo p0, "unregistered"

    :goto_13
    return-object p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;)",
            "Landroid/location/provider/ProviderRequest;"
        }
    .end annotation

    .line 74
    new-instance p0, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p0}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot mock the passive provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 3

    .line 44
    instance-of v0, p1, Lcom/android/server/location/provider/PassiveLocationProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    return-void
.end method

.method public updateLocation(Landroid/location/LocationResult;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/PassiveLocationProvider;

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 61
    :goto_10
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_24

    .line 65
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/PassiveLocationProvider;->updateLocation(Landroid/location/LocationResult;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    .line 67
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0

    :catchall_24
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p0
.end method
