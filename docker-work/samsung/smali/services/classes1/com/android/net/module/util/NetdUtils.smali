.class public Lcom/android/net/module/util/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetdUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 208
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_4

    .line 209
    sget-object v2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v2, v1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    goto :goto_4

    .line 214
    :cond_1e
    sget-object p2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/IpPrefix;

    const-string v3, "fe80::/64"

    invoke-direct {v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, p2, v1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method public static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_19

    const/4 p0, 0x7

    if-eq v0, p0, :cond_15

    const/16 p0, 0x9

    if-eq v0, p0, :cond_11

    goto :goto_27

    :cond_11
    const-string/jumbo v2, "throw"

    goto :goto_27

    :cond_15
    const-string/jumbo v2, "unreachable"

    goto :goto_27

    .line 238
    :cond_19
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 239
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :cond_27
    :goto_27
    return-object v2
.end method

.method public static getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 2
    .param p0    # Landroid/net/INetd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hasFlag(Landroid/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Landroid/net/InterfaceConfigurationParcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    invoke-static {p1}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .registers 8

    .line 260
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {p3}, Lcom/android/net/module/util/NetdUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object p3

    .line 265
    :try_start_10
    sget-object v2, Lcom/android/net/module/util/NetdUtils$1;->$SwitchMap$com$android$net$module$util$NetdUtils$ModifyOperation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_39

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 270
    invoke-interface {p0, p2, v0, v1, p3}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 273
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported modify operation:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_39
    invoke-interface {p0, p2, v0, v1, p3}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3c} :catch_3d
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception p0

    .line 276
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-gt v0, p2, :cond_30

    const/16 v1, 0x63

    .line 179
    :try_start_5
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v1

    .line 182
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_19

    if-ge v0, p2, :cond_19

    int-to-long v1, p3

    .line 183
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_19
    sget-object p0, Lcom/android/net/module/util/NetdUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Retry Netd#networkAddInterface failure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    throw v1

    :cond_30
    return-void
.end method

.method public static removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :try_start_5
    invoke-static {p2}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 97
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 100
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_1e

    .line 101
    :cond_1b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_21
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid InterfaceConfigurationParcel"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 224
    :try_start_11
    sget-object v2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    const/16 v3, 0x63

    invoke-static {p0, v2, v3, v1}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_5

    :catch_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    return v0
.end method

.method public static setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V
    .registers 2

    .line 115
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setInterfaceDown(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 5

    .line 135
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    .line 136
    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string/jumbo v1, "up"

    const-string v2, "down"

    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 138
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    return-void
.end method

.method public static setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 5

    .line 125
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    .line 126
    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string v1, "down"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 128
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x32

    .line 153
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/net/module/util/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V

    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 160
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 161
    invoke-static {p0, p1, p3, p4}, Lcom/android/net/module/util/NetdUtils;->networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V

    .line 162
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance p4, Landroid/net/RouteInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p4, p2, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {p0, p1, p3}, Lcom/android/net/module/util/NetdUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 145
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 146
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 147
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    return-void
.end method

.method public static untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    const/16 v0, 0x63

    .line 197
    :try_start_2
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 199
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    return-void

    :catchall_9
    move-exception v1

    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 200
    throw v1
.end method

.method public static validateFlag(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x20

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
