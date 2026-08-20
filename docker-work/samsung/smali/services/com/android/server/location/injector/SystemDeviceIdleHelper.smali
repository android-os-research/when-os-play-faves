.class public Lcom/android/server/location/injector/SystemDeviceIdleHelper;
.super Lcom/android/server/location/injector/DeviceIdleHelper;
.source "SystemDeviceIdleHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mRegistrationRequired:Z

.field public mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDeviceIdle()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 98
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    return p0
.end method

.method public final onRegistrationStateChanged()V
    .registers 8

    .line 68
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    :try_start_9
    iget-boolean v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2a

    .line 75
    new-instance v2, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;-><init>(Lcom/android/server/location/injector/SystemDeviceIdleHelper;)V

    .line 81
    iget-object v4, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 81
    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    iput-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_37

    :cond_2a
    if-nez v2, :cond_37

    .line 85
    iget-object v2, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_37

    .line 87
    iput-object v3, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_3b

    .line 91
    :cond_37
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw p0
.end method

.method public declared-synchronized onSystemReady()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 50
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mSystemReady:Z

    .line 51
    iget-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 53
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerInternal()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 57
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 59
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterInternal()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->mRegistrationRequired:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onRegistrationStateChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 65
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
