.class public Lorg/apache/http/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnRoutePNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lorg/apache/http/HttpHost;

.field public static final NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 65
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    .line 72
    new-instance v1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    sput-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 93
    if-eqz p0, :cond_17

    .line 96
    nop

    .line 97
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 98
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_16

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v0}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    const/4 v0, 0x0

    .line 102
    :cond_16
    return-object v0

    .line 94
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 137
    if-eqz p0, :cond_17

    .line 140
    nop

    .line 141
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/routing/HttpRoute;

    .line 142
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_16

    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 144
    const/4 v0, 0x0

    .line 146
    :cond_16
    return-object v0

    .line 138
    .end local v0    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 182
    if-eqz p0, :cond_c

    .line 185
    nop

    .line 186
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 188
    .local v0, "local":Ljava/net/InetAddress;
    return-object v0

    .line 183
    .end local v0    # "local":Ljava/net/InetAddress;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    .line 118
    if-eqz p0, :cond_8

    .line 121
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 122
    return-void

    .line 119
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setForcedRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 162
    if-eqz p0, :cond_8

    .line 165
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 166
    return-void

    .line 163
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "local"    # Ljava/net/InetAddress;

    .line 201
    if-eqz p0, :cond_8

    .line 204
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 205
    return-void

    .line 202
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
