.class public Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected proxySelector:Ljava/net/ProxySelector;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V
    .registers 5
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p2, "prosel"    # Ljava/net/ProxySelector;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_a

    .line 95
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 96
    iput-object p2, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 97
    return-void

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;
    .registers 10
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .line 271
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 276
    const/4 v0, 0x0

    .line 279
    .local v0, "result":Ljava/net/Proxy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-nez v0, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Proxy;

    .line 282
    .local v2, "p":Ljava/net/Proxy;
    sget-object v3, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    goto :goto_2a

    .line 286
    :pswitch_28
    move-object v0, v2

    .line 287
    nop

    .line 279
    .end local v2    # "p":Ljava/net/Proxy;
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 296
    .end local v1    # "i":I
    :cond_2d
    if-nez v0, :cond_31

    .line 300
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 303
    :cond_31
    return-object v0

    .line 272
    .end local v0    # "result":Ljava/net/Proxy;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy list must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method protected determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;
    .registers 13
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 196
    .local v0, "psel":Ljava/net/ProxySelector;
    if-nez v0, :cond_8

    .line 197
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 198
    :cond_8
    if-nez v0, :cond_c

    .line 199
    const/4 v1, 0x0

    return-object v1

    .line 201
    :cond_c
    const/4 v1, 0x0

    .line 203
    .local v1, "targetURI":Ljava/net/URI;
    :try_start_d
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_16} :catch_64

    move-object v1, v2

    .line 207
    nop

    .line 208
    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->chooseProxy(Ljava/util/List;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Proxy;

    move-result-object v3

    .line 212
    .local v3, "p":Ljava/net/Proxy;
    const/4 v4, 0x0

    .line 213
    .local v4, "result":Lorg/apache/http/HttpHost;
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_63

    .line 215
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_46

    .line 219
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 221
    .local v5, "isa":Ljava/net/InetSocketAddress;
    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-virtual {p0, v5}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v4, v6

    goto :goto_63

    .line 216
    .end local v5    # "isa":Ljava/net/InetSocketAddress;
    :cond_46
    new-instance v5, Lorg/apache/http/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to handle non-Inet proxy address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 217
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_63
    :goto_63
    return-object v4

    .line 204
    .end local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v4    # "result":Lorg/apache/http/HttpHost;
    :catch_64
    move-exception v2

    .line 205
    .local v2, "usx":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot convert host to URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .registers 10
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 128
    if-eqz p2, :cond_5b

    .line 134
    nop

    .line 135
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 136
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_e

    .line 137
    return-object v0

    .line 142
    :cond_e
    if-eqz p1, :cond_53

    .line 147
    nop

    .line 148
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 153
    .local v1, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    .line 154
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    if-nez v2, :cond_2c

    .line 155
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->determineProxy(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpHost;

    move-result-object v2

    goto :goto_35

    .line 156
    :cond_2c
    sget-object v3, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v2}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 158
    const/4 v2, 0x0

    .line 162
    :cond_35
    :goto_35
    iget-object v3, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 163
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 166
    .local v3, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v4

    .line 168
    .local v4, "secure":Z
    if-nez v2, :cond_4c

    .line 169
    new-instance v5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    move-object v0, v5

    goto :goto_52

    .line 171
    :cond_4c
    new-instance v5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v2, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    move-object v0, v5

    .line 173
    :goto_52
    return-object v0

    .line 143
    .end local v1    # "local":Ljava/net/InetAddress;
    .end local v2    # "proxy":Lorg/apache/http/HttpHost;
    .end local v3    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v4    # "secure":Z
    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Target host must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 3
    .param p1, "isa"    # Ljava/net/InetSocketAddress;

    .line 243
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_13
    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)V
    .registers 2
    .param p1, "prosel"    # Ljava/net/ProxySelector;

    .line 117
    iput-object p1, p0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    .line 118
    return-void
.end method
