.class public final Lorg/apache/http/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:[Lorg/apache/http/HttpHost;

.field private final secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private final tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .registers 9
    .param p1, "local"    # Ljava/net/InetAddress;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p2, :cond_29

    .line 108
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne p5, v0, :cond_14

    if-eqz p3, :cond_c

    goto :goto_14

    .line 109
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy required if tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_14
    :goto_14
    if-nez p5, :cond_18

    .line 115
    sget-object p5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 116
    :cond_18
    if-nez p6, :cond_1c

    .line 117
    sget-object p6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 119
    :cond_1c
    iput-object p2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    .line 120
    iput-object p1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    .line 121
    iput-object p3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    .line 122
    iput-boolean p4, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    .line 123
    iput-object p5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    .line 124
    iput-object p6, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 125
    return-void

    .line 105
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .registers 9
    .param p1, "target"    # Lorg/apache/http/HttpHost;

    .line 191
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V
    .registers 12
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z

    .line 210
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 211
    if-eqz p4, :cond_9

    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    goto :goto_b

    :cond_9
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    :goto_b
    move-object v5, v0

    .line 212
    if-eqz p4, :cond_11

    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    goto :goto_13

    :cond_11
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    :goto_13
    move-object v6, v0

    .line 210
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 213
    if-eqz p3, :cond_1e

    .line 217
    return-void

    .line 214
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .registers 14
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 166
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V
    .registers 11
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "secure"    # Z

    .line 181
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .registers 14
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    .line 143
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 144
    return-void
.end method

.method private static toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .registers 3
    .param p0, "proxy"    # Lorg/apache/http/HttpHost;

    .line 228
    if-nez p0, :cond_4

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .registers 5
    .param p0, "proxies"    # [Lorg/apache/http/HttpHost;

    .line 244
    if-eqz p0, :cond_23

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_23

    .line 247
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1b

    aget-object v3, p0, v2

    .line 248
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v3, :cond_13

    .line 247
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 249
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy chain may not contain null elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1b
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/http/HttpHost;

    .line 255
    .local v0, "result":[Lorg/apache/http/HttpHost;
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    return-object v0

    .line 245
    .end local v0    # "result":[Lorg/apache/http/HttpHost;
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 444
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 347
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 348
    return v0

    .line 349
    :cond_4
    instance-of v1, p1, Lorg/apache/http/conn/routing/HttpRoute;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 350
    return v2

    .line 352
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/http/conn/routing/HttpRoute;

    .line 353
    .local v1, "that":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v4, v1, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 354
    .local v3, "equal":Z
    iget-object v4, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v5, v1, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eq v4, v5, :cond_26

    if-eqz v4, :cond_24

    .line 357
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

    .line 358
    iget-object v4, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v5, v1, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

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

    .line 364
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    iget-boolean v6, v1, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-ne v5, v6, :cond_4e

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, v1, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v5, v6, :cond_4e

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iget-object v6, v1, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v5, v6, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v2

    :goto_4f
    and-int/2addr v0, v3

    .line 370
    .end local v3    # "equal":Z
    .local v0, "equal":Z
    if-eqz v0, :cond_69

    if-eqz v4, :cond_69

    .line 371
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_55
    if-eqz v0, :cond_69

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v4, v3

    if-ge v2, v4, :cond_69

    .line 372
    aget-object v3, v3, v2

    iget-object v4, v1, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 375
    .end local v2    # "i":I
    :cond_69
    return v0
.end method

.method public final getHopCount()I
    .registers 3

    .line 276
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    array-length v0, v0

    add-int/2addr v1, v0

    :goto_8
    return v1
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .registers 6
    .param p1, "hop"    # I

    .line 282
    if-ltz p1, :cond_38

    .line 285
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    .line 286
    .local v0, "hopcount":I
    if-ge p1, v0, :cond_15

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_12

    .line 293
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v1, v2, p1

    goto :goto_14

    .line 295
    :cond_12
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    .line 297
    :goto_14
    return-object v1

    .line 287
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

    const-string v3, " exceeds route length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    .end local v0    # "hopcount":I
    :cond_38
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

    .line 321
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 270
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .registers 3

    .line 303
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

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

    .line 264
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .registers 2

    .line 309
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .registers 7

    .line 387
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v0

    .line 389
    .local v0, "hc":I
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_f

    .line 390
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 391
    :cond_f
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_23

    .line 392
    array-length v2, v1

    xor-int/2addr v0, v2

    .line 393
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .local v4, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .end local v4    # "aProxyChain":Lorg/apache/http/HttpHost;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 396
    :cond_23
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v1, :cond_2b

    .line 397
    const v1, 0x11111111

    xor-int/2addr v0, v1

    .line 399
    :cond_2b
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 400
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 402
    return v0
.end method

.method public final isLayered()Z
    .registers 3

    .line 327
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

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

    .line 333
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .registers 3

    .line 315
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v0, "cab":Ljava/lang/StringBuilder;
    const-string v1, "HttpRoute["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_1e

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_1e
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_2e

    .line 422
    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_2e
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_39

    .line 424
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    :cond_39
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v1, :cond_42

    .line 426
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    :cond_42
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_5a

    .line 429
    array-length v3, v1

    const/4 v4, 0x0

    :goto_4d
    if-ge v4, v3, :cond_5a

    aget-object v5, v1, v4

    .line 430
    .local v5, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .end local v5    # "aProxyChain":Lorg/apache/http/HttpHost;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 434
    :cond_5a
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
