.class Landroid/os/INetworkManagementService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 2655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2656
    iput-object p1, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2657
    return-void
.end method


# virtual methods
.method public blacklist addApeRule(ZLjava/lang/String;I)I
    .registers 9
    .param p1, "add"    # Z
    .param p2, "infName"    # Ljava/lang/String;
    .param p3, "bandwidthMbps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4614
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4617
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4619
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4620
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4621
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4622
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 4626
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4628
    nop

    .line 4629
    return v2

    .line 4626
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4628
    throw v2
.end method

.method public blacklist addChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4147
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4148
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4151
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4153
    nop

    .line 4154
    return-void

    .line 4151
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4153
    throw v2
.end method

.method public greylist-max-o addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3612
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3613
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3618
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3619
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3622
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    nop

    .line 3625
    return-void

    .line 3622
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    throw v2
.end method

.method public blacklist addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4364
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4365
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4368
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    nop

    .line 4371
    return-void

    .line 4368
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    throw v2
.end method

.method public blacklist addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4987
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4988
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4989
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4990
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4994
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    nop

    .line 4997
    return-void

    .line 4994
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4996
    throw v2
.end method

.method public blacklist addMptcpLink(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4116
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4117
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4120
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4122
    nop

    .line 4123
    return-void

    .line 4120
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4122
    throw v2
.end method

.method public blacklist addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3779
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3783
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3785
    nop

    .line 3786
    return-void

    .line 3783
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3785
    throw v2
.end method

.method public blacklist addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "externalIface"    # Ljava/lang/String;
    .param p2, "interfanIface"    # Ljava/lang/String;
    .param p3, "externalIp"    # Ljava/lang/String;
    .param p4, "internalIp"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3957
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3959
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3960
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 3963
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    nop

    .line 3966
    return-void

    .line 3963
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    throw v2
.end method

.method public greylist-max-o addRoute(ILandroid/net/RouteInfo;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2879
    iget-object v3, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2880
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 2883
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2883
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    throw v2
.end method

.method public blacklist addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4179
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4181
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4182
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4183
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4186
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4188
    nop

    .line 4189
    return-void

    .line 4186
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4188
    throw v2
.end method

.method public blacklist addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4258
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4262
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4264
    nop

    .line 4265
    return-void

    .line 4262
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4264
    throw v2
.end method

.method public blacklist addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4293
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4294
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4295
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4298
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4300
    nop

    .line 4301
    return-void

    .line 4298
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4300
    throw v2
.end method

.method public blacklist addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4493
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4494
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4497
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4499
    nop

    .line 4500
    return-void

    .line 4497
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4499
    throw v2
.end method

.method public blacklist addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4458
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4459
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4460
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4463
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4465
    nop

    .line 4466
    return-void

    .line 4463
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4465
    throw v2
.end method

.method public blacklist addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4218
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4219
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4220
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4221
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 4225
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    nop

    .line 4228
    return-void

    .line 4225
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    throw v2
.end method

.method public blacklist addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4331
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4334
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4336
    nop

    .line 4337
    return-void

    .line 4334
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4336
    throw v2
.end method

.method public greylist-max-o allowProtect(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3586
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3587
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3590
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3592
    nop

    .line 3593
    return-void

    .line 3590
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3592
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 2660
    iget-object v0, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist buildFirewall()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4872
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4876
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4878
    nop

    .line 4879
    return-void

    .line 4876
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4878
    throw v2
.end method

.method public blacklist cleanAllBlock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4770
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4771
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4774
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    nop

    .line 4777
    return-void

    .line 4774
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4776
    throw v2
.end method

.method public blacklist cleanBlockPorts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4819
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4821
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4822
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4823
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4826
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4828
    nop

    .line 4829
    return-void

    .line 4826
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4828
    throw v2
.end method

.method public blacklist clearEbpfMap(I)V
    .registers 7
    .param p1, "mapId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3842
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3844
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3845
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3848
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3850
    nop

    .line 3851
    return-void

    .line 3848
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3850
    throw v2
.end method

.method public greylist-max-o clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2761
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2762
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 2765
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    nop

    .line 2768
    return-void

    .line 2765
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    throw v2
.end method

.method public blacklist closeSocketsForFreecess(ILjava/lang/String;)V
    .registers 8
    .param p1, "chain"    # I
    .param p2, "chainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3535
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3536
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3537
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3540
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    nop

    .line 3543
    return-void

    .line 3540
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    throw v2
.end method

.method public blacklist closeSocketsForUid(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3574
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3576
    nop

    .line 3577
    return-void

    .line 3574
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3576
    throw v2
.end method

.method public blacklist closeSocketsForUids([I)V
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3555
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3556
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3559
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3561
    nop

    .line 3562
    return-void

    .line 3559
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3561
    throw v2
.end method

.method public blacklist createNetworkGuardChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3994
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3995
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 3998
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    nop

    .line 4001
    return-void

    .line 3998
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4000
    throw v2
.end method

.method public blacklist delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4381
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4382
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4385
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4387
    nop

    .line 4388
    return-void

    .line 4385
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4387
    throw v2
.end method

.method public blacklist delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4506
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4509
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4510
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4511
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4514
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4516
    nop

    .line 4517
    return-void

    .line 4514
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4516
    throw v2
.end method

.method public blacklist delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4475
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4476
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4477
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4480
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4482
    nop

    .line 4483
    return-void

    .line 4480
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4482
    throw v2
.end method

.method public blacklist deleteNetworkGuardChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4008
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4009
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4012
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4014
    nop

    .line 4015
    return-void

    .line 4012
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4014
    throw v2
.end method

.method public blacklist deleteNetworkGuardWhiteListRule()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4051
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4052
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4055
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4057
    nop

    .line 4058
    return-void

    .line 4055
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4057
    throw v2
.end method

.method public greylist-max-o denyProtect(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3602
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3603
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3606
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3608
    nop

    .line 3609
    return-void

    .line 3606
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3608
    throw v2
.end method

.method public blacklist disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4673
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4678
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4679
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4682
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4684
    nop

    .line 4685
    return-void

    .line 4682
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4684
    throw v2
.end method

.method public greylist-max-o disableIpv6(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2826
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2827
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2830
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    nop

    .line 2833
    return-void

    .line 2830
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    throw v2
.end method

.method public blacklist disableMptcp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4439
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4442
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4446
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4448
    nop

    .line 4449
    return-void

    .line 4446
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4448
    throw v2
.end method

.method public greylist-max-o disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3166
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3167
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3170
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3172
    nop

    .line 3173
    return-void

    .line 3170
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3172
    throw v2
.end method

.method public blacklist disableNetworkGuard()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4034
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4037
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4038
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4041
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4043
    nop

    .line 4044
    return-void

    .line 4041
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4043
    throw v2
.end method

.method public blacklist enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;
    .param p3, "deleteSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4662
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4663
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4666
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    nop

    .line 4669
    return-void

    .line 4666
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    throw v2
.end method

.method public greylist-max-o enableIpv6(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2842
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2843
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2846
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    nop

    .line 2849
    return-void

    .line 2846
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    throw v2
.end method

.method public blacklist enableKnoxVpnFlagForTether(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3894
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3898
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3900
    nop

    .line 3901
    return-void

    .line 3898
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3900
    throw v2
.end method

.method public blacklist enableMptcp(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4427
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4428
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4429
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4432
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4434
    nop

    .line 4435
    return-void

    .line 4432
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4434
    throw v2
.end method

.method public greylist-max-o enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3149
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3150
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3153
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3155
    nop

    .line 3156
    return-void

    .line 3153
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3155
    throw v2
.end method

.method public blacklist enableNetworkGuard(Z)V
    .registers 7
    .param p1, "isBlack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4021
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4023
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4027
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4029
    nop

    .line 4030
    return-void

    .line 4027
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4029
    throw v2
.end method

.method public greylist-max-o getDnsForwarders()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3086
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3087
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 3091
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3093
    nop

    .line 3094
    return-object v2

    .line 3091
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3093
    throw v2
.end method

.method public greylist-max-o getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2726
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2728
    sget-object v3, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfiguration;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 2731
    .local v2, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2733
    nop

    .line 2734
    return-object v2

    .line 2731
    .end local v2    # "_result":Landroid/net/InterfaceConfiguration;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2733
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2664
    const-string v0, "android.os.INetworkManagementService"

    return-object v0
.end method

.method public greylist-max-o getIpForwardingEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2928
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2929
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2930
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 2933
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    nop

    .line 2936
    return v2

    .line 2933
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    throw v2
.end method

.method public greylist-max-o getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3249
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3250
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3251
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2d

    move-object v2, v3

    .line 3254
    .local v2, "_result":Landroid/net/NetworkStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    nop

    .line 3257
    return-object v2

    .line 3254
    .end local v2    # "_result":Landroid/net/NetworkStats;
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    throw v2
.end method

.method public blacklist getNetworkStatsVideoCall(Ljava/lang/String;II)J
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sport"    # I
    .param p3, "dport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3725
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move-wide v2, v3

    .line 3731
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    nop

    .line 3734
    return-wide v2

    .line 3731
    .end local v2    # "_result":J
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    throw v2
.end method

.method public greylist-max-o isBandwidthControlEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3412
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3416
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3417
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 3421
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    nop

    .line 3424
    return v2

    .line 3421
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw v2
.end method

.method public greylist-max-o isFirewallEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3448
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3449
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 3453
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3455
    nop

    .line 3456
    return v2

    .line 3453
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3455
    throw v2
.end method

.method public greylist-max-o isNetworkRestricted(I)Z
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3667
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3668
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 3672
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3674
    nop

    .line 3675
    return v2

    .line 3672
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3674
    throw v2
.end method

.method public greylist-max-o isTetheringStarted()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3014
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3017
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3018
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3019
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3020
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 3023
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    nop

    .line 3026
    return v2

    .line 3023
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    throw v2
.end method

.method public greylist-max-o listInterfaces()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2706
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2707
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 2712
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2714
    nop

    .line 2715
    return-object v2

    .line 2712
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2714
    throw v2
.end method

.method public greylist-max-o listTetheredInterfaces()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3069
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 3073
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    nop

    .line 3076
    return-object v2

    .line 3073
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    throw v2
.end method

.method public blacklist prioritizeApp(ZI)I
    .registers 8
    .param p1, "add"    # Z
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4601
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4602
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 4606
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4608
    nop

    .line 4609
    return v2

    .line 4606
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4608
    throw v2
.end method

.method public blacklist registerNetdTetherEventListener()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3908
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3909
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 3912
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    nop

    .line 3915
    return-void

    .line 3912
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    throw v2
.end method

.method public greylist-max-o registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 7
    .param p1, "obs"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2675
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2676
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 2679
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2679
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    throw v2
.end method

.method public greylist-max-o registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3186
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3187
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3188
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3191
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3193
    nop

    .line 3194
    return-void

    .line 3191
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3193
    throw v2
.end method

.method public blacklist removeChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4163
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4164
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4167
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4169
    nop

    .line 4170
    return-void

    .line 4167
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4169
    throw v2
.end method

.method public greylist-max-o removeInterfaceAlert(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3317
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    nop

    .line 3324
    return-void

    .line 3321
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    throw v2
.end method

.method public greylist-max-o removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3633
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3634
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3637
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
    nop

    .line 3640
    return-void

    .line 3637
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3639
    throw v2
.end method

.method public greylist-max-o removeInterfaceQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3284
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3285
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3288
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    nop

    .line 3291
    return-void

    .line 3288
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3290
    throw v2
.end method

.method public blacklist removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5005
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5007
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5009
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5010
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 5013
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5015
    nop

    .line 5016
    return-void

    .line 5013
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5015
    throw v2
.end method

.method public blacklist removeMptcpLink(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4131
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4132
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4135
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4137
    nop

    .line 4138
    return-void

    .line 4135
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4137
    throw v2
.end method

.method public greylist-max-o removeRoute(ILandroid/net/RouteInfo;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2896
    iget-object v3, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2897
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 2900
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2902
    nop

    .line 2903
    return-void

    .line 2900
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2902
    throw v2
.end method

.method public greylist-max-o removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3643
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3649
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3650
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3651
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 3654
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3656
    nop

    .line 3657
    return v2

    .line 3654
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3656
    throw v2
.end method

.method public blacklist removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4199
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4200
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4201
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4202
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4205
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4207
    nop

    .line 4208
    return-void

    .line 4205
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4207
    throw v2
.end method

.method public blacklist removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4275
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4276
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4279
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4281
    nop

    .line 4282
    return-void

    .line 4279
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4281
    throw v2
.end method

.method public blacklist removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4312
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4313
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4314
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4317
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    nop

    .line 4320
    return-void

    .line 4317
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    throw v2
.end method

.method public blacklist removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4345
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4346
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4347
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4348
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4351
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4353
    nop

    .line 4354
    return-void

    .line 4351
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4353
    throw v2
.end method

.method public blacklist removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4238
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4239
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4240
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4241
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4242
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    .line 4245
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    nop

    .line 4248
    return-void

    .line 4245
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    throw v2
.end method

.method public blacklist replaceApeRule(Ljava/lang/String;II)I
    .registers 9
    .param p1, "infName"    # Ljava/lang/String;
    .param p2, "oldBandwidthMbps"    # I
    .param p3, "newBandwidthMbps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4640
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4641
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4642
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 4646
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4648
    nop

    .line 4649
    return v2

    .line 4646
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4648
    throw v2
.end method

.method public blacklist runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "target"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3860
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3861
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3862
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move-object v2, v3

    .line 3866
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3868
    nop

    .line 3869
    return-object v2

    .line 3866
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3868
    throw v2
.end method

.method public blacklist runKnoxRulesCommand(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3874
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3879
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3880
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3883
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3885
    nop

    .line 3886
    return-void

    .line 3883
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3885
    throw v2
.end method

.method public blacklist setAllowListIPs(Ljava/lang/String;)V
    .registers 7
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4756
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4757
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4760
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4762
    nop

    .line 4763
    return-void

    .line 4760
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4762
    throw v2
.end method

.method public blacklist setBlockAllDNSPackets(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4724
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4726
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4727
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4730
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    nop

    .line 4733
    return-void

    .line 4730
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4732
    throw v2
.end method

.method public blacklist setBlockAllPackets()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4784
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4785
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4788
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4790
    nop

    .line 4791
    return-void

    .line 4788
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4790
    throw v2
.end method

.method public blacklist setBlockListIPs(Ljava/lang/String;)V
    .registers 7
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4739
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4741
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4745
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4747
    nop

    .line 4748
    return-void

    .line 4745
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4747
    throw v2
.end method

.method public blacklist setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "directionBitMask"    # I
    .param p3, "ports"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4803
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4806
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4807
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4808
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4811
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4813
    nop

    .line 4814
    return-void

    .line 4811
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4813
    throw v2
.end method

.method public greylist-max-o setDataSaverModeEnabled(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3382
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 3387
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    nop

    .line 3390
    return v2

    .line 3387
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    throw v2
.end method

.method public blacklist setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1, "add"    # Z
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "outInterface"    # Ljava/lang/String;
    .param p4, "mark"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4559
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4562
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4563
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4564
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4567
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4569
    nop

    .line 4570
    return-void

    .line 4567
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4569
    throw v2
.end method

.method public blacklist setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "dns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3741
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3746
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3747
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3750
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    nop

    .line 3753
    return-void

    .line 3750
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    throw v2
.end method

.method public blacklist setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "add"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4691
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4694
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4695
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4698
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    nop

    .line 4701
    return-void

    .line 4698
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    throw v2
.end method

.method public greylist-max-o setFirewallChainEnabled(IZ)V
    .registers 8
    .param p1, "chain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3515
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3516
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3517
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3520
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    nop

    .line 3523
    return-void

    .line 3520
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    throw v2
.end method

.method public greylist-max-o setFirewallEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3433
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3437
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3439
    nop

    .line 3440
    return-void

    .line 3437
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3439
    throw v2
.end method

.method public greylist-max-o setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3466
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3470
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3472
    nop

    .line 3473
    return-void

    .line 3470
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3472
    throw v2
.end method

.method public blacklist setFirewallRuleMobileData(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4904
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4908
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4910
    nop

    .line 4911
    return-void

    .line 4908
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4910
    throw v2
.end method

.method public blacklist setFirewallRuleWifi(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4888
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4889
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4892
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4894
    nop

    .line 4895
    return-void

    .line 4892
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4894
    throw v2
.end method

.method public greylist-max-o setFirewallUidRule(III)V
    .registers 9
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3482
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3483
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3484
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3487
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    nop

    .line 3490
    return-void

    .line 3487
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3489
    throw v2
.end method

.method public greylist-max-o setFirewallUidRules(I[I[I)V
    .registers 9
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3499
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3500
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3501
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3504
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    nop

    .line 3507
    return-void

    .line 3504
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    throw v2
.end method

.method public greylist-max-o setGlobalAlert(J)V
    .registers 8
    .param p1, "alertBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3332
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3333
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3334
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3337
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    nop

    .line 3340
    return-void

    .line 3337
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    throw v2
.end method

.method public greylist-max-o setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2857
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2862
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2863
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 2866
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2868
    nop

    .line 2869
    return-void

    .line 2866
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2868
    throw v2
.end method

.method public greylist-max-o setInterfaceAlert(Ljava/lang/String;J)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3300
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3301
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3302
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3305
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3307
    nop

    .line 3308
    return-void

    .line 3305
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3307
    throw v2
.end method

.method public greylist-max-o setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2742
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2744
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2745
    iget-object v3, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2746
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 2749
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    nop

    .line 2752
    return-void

    .line 2749
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    throw v2
.end method

.method public greylist-max-o setInterfaceDown(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2775
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2777
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2778
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 2781
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    nop

    .line 2784
    return-void

    .line 2781
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    throw v2
.end method

.method public greylist-max-o setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2810
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 2814
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2816
    nop

    .line 2817
    return-void

    .line 2814
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2816
    throw v2
.end method

.method public greylist-max-o setInterfaceQuota(Ljava/lang/String;J)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3268
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3269
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3272
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    nop

    .line 3275
    return-void

    .line 3272
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    throw v2
.end method

.method public greylist-max-o setInterfaceUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2793
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2797
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2799
    nop

    .line 2800
    return-void

    .line 2797
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2799
    throw v2
.end method

.method public greylist-max-o setIpForwardingEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2946
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2947
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2950
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    nop

    .line 2953
    return-void

    .line 2950
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    throw v2
.end method

.method public blacklist setKnoxGuardExemptRule(ZLjava/lang/String;I)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3977
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3978
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3979
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3982
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3984
    nop

    .line 3985
    return-void

    .line 3982
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3984
    throw v2
.end method

.method public blacklist setKnoxVpn(IZ)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "isKnoxVpn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3938
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3942
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3944
    nop

    .line 3945
    return-void

    .line 3942
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3944
    throw v2
.end method

.method public blacklist setMptcpMtuValue(Ljava/lang/String;I)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4413
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4414
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4417
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4419
    nop

    .line 4420
    return-void

    .line 4417
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4419
    throw v2
.end method

.method public blacklist setNetworkGuardProtocolAcceptRule(I)V
    .registers 7
    .param p1, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4095
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4097
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4099
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4100
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4103
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4105
    nop

    .line 4106
    return-void

    .line 4103
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4105
    throw v2
.end method

.method public blacklist setNetworkGuardUidRangeAcceptRule(II)V
    .registers 8
    .param p1, "uidStart"    # I
    .param p2, "uidEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4067
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4071
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4073
    nop

    .line 4074
    return-void

    .line 4071
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4073
    throw v2
.end method

.method public blacklist setNetworkGuardUidRule(IZZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "mode"    # Z
    .param p3, "isDrop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4083
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4084
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4085
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4088
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4090
    nop

    .line 4091
    return-void

    .line 4088
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4090
    throw v2
.end method

.method public blacklist setNetworkInfo(IZI)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "chainedNetwork"    # Z
    .param p3, "vpnClientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3762
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3764
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3767
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    nop

    .line 3770
    return-void

    .line 3767
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3769
    throw v2
.end method

.method public blacklist setPrivateIpRoute(ZLjava/lang/String;I)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4543
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4544
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4545
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4548
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4550
    nop

    .line 4551
    return-void

    .line 4548
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4550
    throw v2
.end method

.method public blacklist setQboxUid(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4946
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4951
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4952
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4955
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4957
    nop

    .line 4958
    return-void

    .line 4955
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4957
    throw v2
.end method

.method public blacklist setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "rmem"    # Ljava/lang/String;
    .param p2, "wmem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4397
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4398
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4401
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4403
    nop

    .line 4404
    return-void

    .line 4401
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4403
    throw v2
.end method

.method public blacklist setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "add"    # Z
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pref"    # Ljava/lang/String;
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4576
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4578
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4580
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4581
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4582
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4583
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    .line 4586
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    nop

    .line 4589
    return-void

    .line 4586
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4588
    throw v2
.end method

.method public greylist-max-o setUidCleartextNetworkPolicy(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3400
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3404
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    nop

    .line 3407
    return-void

    .line 3404
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3406
    throw v2
.end method

.method public blacklist setUidOnMeteredNetworkAllowlist(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3366
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3367
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3370
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    nop

    .line 3373
    return-void

    .line 3370
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    throw v2
.end method

.method public blacklist setUidOnMeteredNetworkDenylist(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3345
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3350
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3351
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3354
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3356
    nop

    .line 3357
    return-void

    .line 3354
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3356
    throw v2
.end method

.method public blacklist setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4840
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4841
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4842
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4845
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4847
    nop

    .line 4848
    return-void

    .line 4845
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4847
    throw v2
.end method

.method public blacklist setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4852
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4857
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4858
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4859
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4862
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4864
    nop

    .line 4865
    return-void

    .line 4862
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4864
    throw v2
.end method

.method public greylist-max-o shutdown()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2910
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2911
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 2915
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    nop

    .line 2918
    return-void

    .line 2915
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    throw v2
.end method

.method public blacklist spegRestrictNetworkConnection(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "restrict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4969
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4970
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 4973
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    nop

    .line 4976
    return-void

    .line 4973
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    throw v2
.end method

.method public greylist-max-o startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3108
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3109
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3112
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3114
    nop

    .line 3115
    return-void

    .line 3112
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3114
    throw v2
.end method

.method public blacklist startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3688
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3689
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3690
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3693
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3695
    nop

    .line 3696
    return-void

    .line 3693
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3695
    throw v2
.end method

.method public blacklist startQbox(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4921
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4927
    nop

    .line 4928
    return-void

    .line 4925
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4927
    throw v2
.end method

.method public greylist-max-o startTethering([Ljava/lang/String;)V
    .registers 7
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2965
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2966
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 2969
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    nop

    .line 2972
    return-void

    .line 2969
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    throw v2
.end method

.method public blacklist startTetheringWithConfiguration(Z[Ljava/lang/String;)V
    .registers 8
    .param p1, "usingLegacyDnsProxy"    # Z
    .param p2, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2982
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2987
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2988
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 2991
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2993
    nop

    .line 2994
    return-void

    .line 2991
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2993
    throw v2
.end method

.method public greylist-max-o stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3128
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3129
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3132
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    nop

    .line 3135
    return-void

    .line 3132
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    throw v2
.end method

.method public blacklist stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3706
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3707
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3708
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3711
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3713
    nop

    .line 3714
    return-void

    .line 3711
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3713
    throw v2
.end method

.method public blacklist stopQbox()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4935
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4936
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 4939
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4941
    nop

    .line 4942
    return-void

    .line 4939
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4941
    throw v2
.end method

.method public greylist-max-o stopTethering()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3003
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 3006
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3008
    nop

    .line 3009
    return-void

    .line 3006
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3008
    throw v2
.end method

.method public greylist-max-o tetherInterface(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3036
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3040
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3042
    nop

    .line 3043
    return-void

    .line 3040
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3042
    throw v2
.end method

.method public greylist-max-o tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .registers 7
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3231
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3235
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    nop

    .line 3238
    return-void

    .line 3235
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3237
    throw v2
.end method

.method public blacklist unregisterNetdTetherEventListener()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3922
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 3926
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    nop

    .line 3929
    return-void

    .line 3926
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    throw v2
.end method

.method public greylist-max-o unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 7
    .param p1, "obs"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2691
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2692
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 2695
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2695
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    throw v2
.end method

.method public greylist-max-o unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .registers 7
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3203
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3204
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3207
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3209
    nop

    .line 3210
    return-void

    .line 3207
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3209
    throw v2
.end method

.method public greylist-max-o untetherInterface(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3050
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3052
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3053
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 3056
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    nop

    .line 3059
    return-void

    .line 3056
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    throw v2
.end method

.method public blacklist updateDefaultGatewayForEpdg(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4708
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4709
    iget-object v3, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4710
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 4713
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4715
    nop

    .line 4716
    return-void

    .line 4713
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4715
    throw v2
.end method

.method public blacklist updateInputFilterAppWideRules([III)V
    .registers 9
    .param p1, "uids"    # [I
    .param p2, "ifaceIndex"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3827
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3828
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3829
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3833
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3835
    nop

    .line 3836
    return-void

    .line 3833
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3835
    throw v2
.end method

.method public blacklist updateInputFilterExemptRules(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3794
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3795
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3796
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 3799
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3801
    nop

    .line 3802
    return-void

    .line 3799
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3801
    throw v2
.end method

.method public blacklist updateInputFilterUserWideRules([III)V
    .registers 9
    .param p1, "userIds"    # [I
    .param p2, "ifaceIndex"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3810
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3811
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3812
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3813
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 3816
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3818
    nop

    .line 3819
    return-void

    .line 3816
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3818
    throw v2
.end method

.method public blacklist updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.INetworkManagementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4527
    iget-object v2, p0, Landroid/os/INetworkManagementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4528
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 4531
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4533
    nop

    .line 4534
    return-void

    .line 4531
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4533
    throw v2
.end method
