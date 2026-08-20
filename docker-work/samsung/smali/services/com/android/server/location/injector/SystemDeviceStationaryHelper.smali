.class public Lcom/android/server/location/injector/SystemDeviceStationaryHelper;
.super Lcom/android/server/location/injector/DeviceStationaryHelper;
.source "SystemDeviceStationaryHelper.java"


# instance fields
.field public mDeviceIdle:Lcom/android/server/DeviceIdleInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 46
    :try_start_e
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    throw p0
.end method

.method public onSystemReady()V
    .registers 2

    .line 37
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    return-void
.end method

.method public removeListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 56
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 58
    :try_start_e
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->mDeviceIdle:Lcom/android/server/DeviceIdleInternal;

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method
