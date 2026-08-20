.class public Landroid/net/NetworkMonitorManager;
.super Ljava/lang/Object;
.source "NetworkMonitorManager.java"


# annotations
.annotation build Landroid/annotation/Hide;
.end annotation


# instance fields
.field private final mNetworkMonitor:Landroid/net/INetworkMonitor;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/INetworkMonitor;)V
    .registers 3

    .line 53
    const-class v0, Landroid/net/NetworkMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    .line 49
    iput-object p2, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 57
    iget-object p0, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public forceReevaluation(I)Z
    .registers 5

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 123
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in forceReevaluation"

    .line 120
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 123
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public launchCaptivePortalApp()Z
    .registers 5

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 78
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 84
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error in launchCaptivePortalApp"

    .line 81
    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 84
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p0
.end method

.method public notifyCaptivePortalAppFinished(I)Z
    .registers 5

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 91
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 97
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in notifyCaptivePortalAppFinished"

    .line 94
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 97
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public notifyDnsResponse(I)Z
    .registers 5

    .line 141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 143
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 149
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in notifyDnsResponse"

    .line 146
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 149
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z
    .registers 5

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 187
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 193
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in notifyLinkPropertiesChanged"

    .line 190
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 193
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw p0
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    .registers 5

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 200
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 206
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in notifyNetworkCapabilitiesChanged"

    .line 203
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 206
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw p0
.end method

.method public notifyNetworkConnected(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)Z
    .registers 6

    .line 154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 156
    :try_start_4
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 157
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V

    goto :goto_19

    .line 159
    :cond_10
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    iget-object v3, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->linkProperties:Landroid/net/LinkProperties;

    iget-object p1, p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v2, v3, p1}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_20
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    :goto_19
    const/4 p0, 0x1

    .line 167
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_28

    :catch_20
    move-exception p1

    :try_start_21
    const-string v2, "Error in notifyNetworkConnected"

    .line 164
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    const/4 p0, 0x0

    goto :goto_1a

    .line 167
    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw p0
.end method

.method public notifyNetworkDisconnected()Z
    .registers 5

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 180
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error in notifyNetworkDisconnected"

    .line 177
    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 180
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw p0
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z
    .registers 5

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 130
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 136
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error in notifyPrivateDnsChanged"

    .line 133
    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 136
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw p0
.end method

.method public setAcceptPartialConnectivity()Z
    .registers 5

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 104
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 110
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error in setAcceptPartialConnectivity"

    .line 107
    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 110
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    throw p0
.end method

.method public start()Z
    .registers 5

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 65
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 71
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error in start"

    .line 68
    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 71
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw p0
.end method
