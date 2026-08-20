.class public Lorg/apache/http/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRouteDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .registers 6
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .line 114
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    .line 115
    return v1

    .line 116
    :cond_9
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 117
    return v1

    .line 125
    :cond_18
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v0

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v2

    if-eq v0, v2, :cond_23

    .line 126
    return v1

    .line 129
    :cond_23
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 130
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 132
    return v1

    .line 134
    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method protected firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I
    .registers 4
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;

    .line 98
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 99
    const/4 v1, 0x2

    goto :goto_a

    :cond_9
    nop

    .line 98
    :goto_a
    return v1
.end method

.method public nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .registers 6
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .line 70
    if-eqz p1, :cond_22

    .line 75
    const/4 v0, -0x1

    .line 77
    .local v0, "step":I
    if-eqz p2, :cond_1d

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_d

    goto :goto_1d

    .line 79
    :cond_d
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    if-le v1, v2, :cond_18

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_21

    .line 82
    :cond_18
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/routing/BasicRouteDirector;->directStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_21

    .line 78
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/routing/BasicRouteDirector;->firstStep(Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v0

    .line 84
    :goto_21
    return v0

    .line 71
    .end local v0    # "step":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Planned route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected proxiedStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I
    .registers 9
    .param p1, "plan"    # Lorg/apache/http/conn/routing/RouteInfo;
    .param p2, "fact"    # Lorg/apache/http/conn/routing/RouteInfo;

    .line 149
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_9

    .line 150
    return v2

    .line 151
    :cond_9
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 152
    return v2

    .line 153
    :cond_18
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v0

    .line 154
    .local v0, "phc":I
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->getHopCount()I

    move-result v1

    .line 155
    .local v1, "fhc":I
    if-ge v0, v1, :cond_23

    .line 156
    return v2

    .line 158
    :cond_23
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_3a

    .line 159
    invoke-interface {p1, v3}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {p2, v3}, Lorg/apache/http/conn/routing/RouteInfo;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 160
    return v2

    .line 158
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 163
    .end local v3    # "i":I
    :cond_3a
    if-le v0, v1, :cond_3e

    .line 164
    const/4 v2, 0x4

    return v2

    .line 167
    :cond_3e
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 168
    :cond_4a
    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v3

    if-nez v3, :cond_57

    .line 169
    :cond_56
    return v2

    .line 171
    :cond_57
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isTunnelled()Z

    move-result v3

    if-nez v3, :cond_65

    .line 172
    const/4 v2, 0x3

    return v2

    .line 173
    :cond_65
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isLayered()Z

    move-result v3

    if-nez v3, :cond_73

    .line 174
    const/4 v2, 0x5

    return v2

    .line 179
    :cond_73
    invoke-interface {p1}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v3

    invoke-interface {p2}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v4

    if-eq v3, v4, :cond_7e

    .line 180
    return v2

    .line 182
    :cond_7e
    const/4 v2, 0x0

    return v2
.end method
