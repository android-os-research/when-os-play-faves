.class public final Lorg/apache/http/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private connected:Z

.field private layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lorg/apache/http/HttpHost;

.field private secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_12

    .line 97
    iput-object p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    .line 98
    iput-object p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 99
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 100
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 101
    return-void

    .line 95
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 4
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 112
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V

    .line 113
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 440
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lorg/apache/http/HttpHost;Z)V
    .registers 5
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    .line 139
    if-eqz p1, :cond_1b

    .line 142
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_13

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    .line 146
    new-array v0, v0, [Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 147
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 148
    return-void

    .line 143
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connectTarget(Z)V
    .registers 4
    .param p1, "secure"    # Z

    .line 123
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_a

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    .line 127
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 128
    return-void

    .line 124
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 334
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 335
    return v0

    .line 336
    :cond_4
    instance-of v1, p1, Lorg/apache/http/conn/routing/RouteTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 337
    return v2

    .line 339
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/http/conn/routing/RouteTracker;

    .line 340
    .local v1, "that":Lorg/apache/http/conn/routing/RouteTracker;
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v4, v1, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 341
    .local v3, "equal":Z
    iget-object v4, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v5, v1, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eq v4, v5, :cond_26

    if-eqz v4, :cond_24

    .line 344
    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_26

    :cond_24
    move v4, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v4, v0

    :goto_27
    and-int/2addr v3, v4

    .line 345
    iget-object v4, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v5, v1, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eq v4, v5, :cond_39

    if-eqz v4, :cond_37

    if-eqz v5, :cond_37

    array-length v6, v4

    array-length v5, v5

    if-ne v6, v5, :cond_37

    goto :goto_39

    :cond_37
    move v5, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v0

    :goto_3a
    and-int/2addr v3, v5

    .line 351
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    iget-boolean v6, v1, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-ne v5, v6, :cond_54

    iget-boolean v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    iget-boolean v6, v1, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-ne v5, v6, :cond_54

    iget-object v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, v1, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v5, v6, :cond_54

    iget-object v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iget-object v6, v1, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v5, v6, :cond_54

    goto :goto_55

    :cond_54
    move v0, v2

    :goto_55
    and-int/2addr v0, v3

    .line 358
    .end local v3    # "equal":Z
    .local v0, "equal":Z
    if-eqz v0, :cond_6f

    if-eqz v4, :cond_6f

    .line 359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    if-eqz v0, :cond_6f

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v4, v3

    if-ge v2, v4, :cond_6f

    .line 360
    aget-object v3, v3, v2

    iget-object v4, v1, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 363
    .end local v2    # "i":I
    :cond_6f
    return v0
.end method

.method public final getHopCount()I
    .registers 3

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "hops":I
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_e

    .line 235
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v1, :cond_b

    .line 236
    const/4 v0, 0x1

    goto :goto_e

    .line 238
    :cond_b
    array-length v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 240
    :cond_e
    :goto_e
    return v0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .registers 6
    .param p1, "hop"    # I

    .line 246
    if-ltz p1, :cond_3e

    .line 249
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    .line 250
    .local v0, "hopcount":I
    if-ge p1, v0, :cond_15

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_12

    .line 258
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v1, v2, p1

    goto :goto_14

    .line 260
    :cond_12
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    .line 262
    :goto_14
    return-object v1

    .line 251
    .end local v1    # "result":Lorg/apache/http/HttpHost;
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hop index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeds tracked route length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    .end local v0    # "hopcount":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hop index must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .registers 2

    .line 292
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 227
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .registers 3

    .line 268
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_9
    return-object v0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .registers 2

    .line 221
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .registers 2

    .line 280
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 378
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v0

    .line 380
    .local v0, "hc":I
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_f

    .line 381
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 382
    :cond_f
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_25

    .line 383
    array-length v1, v1

    xor-int/2addr v0, v1

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v2

    if-ge v1, v3, :cond_25

    .line 385
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 388
    .end local v1    # "i":I
    :cond_25
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_2d

    .line 389
    const v1, 0x11111111

    xor-int/2addr v0, v1

    .line 390
    :cond_2d
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-eqz v1, :cond_35

    .line 391
    const v1, 0x22222222

    xor-int/2addr v0, v1

    .line 393
    :cond_35
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 394
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 396
    return v0
.end method

.method public final isConnected()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .registers 3

    .line 298
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isSecure()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .registers 3

    .line 286
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final layerProtocol(Z)V
    .registers 4
    .param p1, "secure"    # Z

    .line 209
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_b

    .line 213
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 214
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 215
    return-void

    .line 210
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No layered protocol unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .registers 9

    .line 317
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_6

    .line 318
    const/4 v0, 0x0

    goto :goto_18

    :cond_6
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-boolean v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    iget-object v6, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v7, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 317
    :goto_18
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v0, "cab":Ljava/lang/StringBuilder;
    const-string v1, "RouteTracker["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_1e

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1e
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_2c

    .line 416
    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    :cond_2c
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_37

    .line 418
    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_37
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_42

    .line 420
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    :cond_42
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    if-eqz v1, :cond_4b

    .line 422
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_4b
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_65

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_55
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v4, v3

    if-ge v1, v4, :cond_65

    .line 426
    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 430
    .end local v1    # "i":I
    :cond_65
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final tunnelProxy(Lorg/apache/http/HttpHost;Z)V
    .registers 7
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    .line 179
    if-eqz p1, :cond_2e

    .line 182
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_26

    .line 185
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_1e

    .line 190
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/http/HttpHost;

    .line 191
    .local v1, "proxies":[Lorg/apache/http/HttpHost;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 195
    iput-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 196
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 197
    return-void

    .line 186
    .end local v1    # "proxies":[Lorg/apache/http/HttpHost;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No proxy tunnel without proxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final tunnelTarget(Z)V
    .registers 4
    .param p1, "secure"    # Z

    .line 158
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_17

    .line 161
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_f

    .line 164
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 165
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    .line 166
    return-void

    .line 162
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel without proxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No tunnel unless connected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
