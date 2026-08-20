.class public Landroid/net/ip/IpClientManager;
.super Ljava/lang/Object;
.source "IpClientManager.java"


# annotations
.annotation build Landroid/annotation/Hide;
.end annotation


# instance fields
.field private final mIpClient:Landroid/net/ip/IIpClient;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ip/IIpClient;)V
    .registers 3

    .line 55
    const-class v0, Landroid/net/ip/IpClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;-><init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 51
    iput-object p2, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 59
    iget-object p0, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)Z
    .registers 6

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 251
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;

    move-result-object p2

    .line 250
    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    const/4 p0, 0x1

    .line 257
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    const-string p2, "Error adding NAT-T Keepalive Packet Filter "

    .line 254
    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    const/4 p0, 0x0

    goto :goto_e

    .line 257
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    throw p0
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)Z
    .registers 3

    .line 221
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/TcpKeepalivePacketData;)Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/ip/IpClientManager;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)Z

    move-result p0

    return p0
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 240
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string p2, "Error adding Keepalive Packet Filter "

    .line 237
    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 240
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    throw p0
.end method

.method public completedPreDhcpAction()Z
    .registers 5

    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 70
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 76
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error completing PreDhcpAction"

    .line 73
    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 76
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0
.end method

.method public confirmConfiguration()Z
    .registers 5

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 92
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error confirming IpClient configuration"

    .line 89
    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 92
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0
.end method

.method public notifyPreconnectionComplete(Z)Z
    .registers 5

    .line 299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 301
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 307
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error notifying IpClient Preconnection completed"

    .line 304
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 307
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw p0
.end method

.method public readPacketFilterComplete([B)Z
    .registers 5

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 102
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 108
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error notifying IpClient of packet filter read"

    .line 105
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 108
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public removeKeepalivePacketFilter(I)Z
    .registers 5

    .line 265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 267
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 273
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error removing Keepalive Packet Filter "

    .line 270
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 273
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    throw p0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Z
    .registers 5

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 190
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 196
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error setting IpClient proxy"

    .line 193
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 196
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p0
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 283
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 289
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string p2, "Failed setL2KeyAndGroupHint"

    .line 286
    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 289
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p0
.end method

.method public setMulticastFilter(Z)Z
    .registers 5

    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 207
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 213
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error setting multicast filter"

    .line 210
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 213
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    throw p0
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)Z
    .registers 5

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 171
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 177
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception p1

    :try_start_11
    const-string v2, "Error setting IpClient TCP buffer sizes"

    .line 174
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 177
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    throw p0
.end method

.method public shutdown()Z
    .registers 5

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 118
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 124
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error shutting down IpClient"

    .line 121
    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 124
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw p0
.end method

.method public startProvisioning(Landroid/net/shared/ProvisioningConfiguration;)Z
    .registers 5

    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    const/4 p0, 0x1

    .line 140
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    const-string v2, "Error starting IpClient provisioning"

    .line 137
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    const/4 p0, 0x0

    goto :goto_e

    .line 140
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw p0
.end method

.method public stop()Z
    .registers 5

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 152
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 158
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :catch_10
    move-exception v2

    :try_start_11
    const-string v3, "Error stopping IpClient"

    .line 155
    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    const/4 p0, 0x0

    goto :goto_a

    .line 158
    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw p0
.end method

.method public updateLayer2Information(Landroid/net/shared/Layer2Information;)Z
    .registers 5

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    const/4 p0, 0x1

    .line 323
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    const-string v2, "Error updating layer2 information"

    .line 320
    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    const/4 p0, 0x0

    goto :goto_e

    .line 323
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw p0
.end method
