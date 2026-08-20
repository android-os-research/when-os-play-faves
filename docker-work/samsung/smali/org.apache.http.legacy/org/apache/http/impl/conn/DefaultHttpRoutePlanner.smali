.class public Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_8

    .line 78
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 79
    return-void

    .line 75
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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

    .line 88
    if-eqz p2, :cond_48

    .line 94
    nop

    .line 95
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 96
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_e

    .line 97
    return-object v0

    .line 102
    :cond_e
    if-eqz p1, :cond_40

    .line 107
    nop

    .line 108
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 109
    .local v1, "local":Ljava/net/InetAddress;
    nop

    .line 110
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/conn/params/ConnRouteParams;->getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 112
    .local v2, "proxy":Lorg/apache/http/HttpHost;
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 115
    .local v3, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    move-result v4

    .line 117
    .local v4, "secure":Z
    if-nez v2, :cond_39

    .line 118
    new-instance v5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    move-object v0, v5

    goto :goto_3f

    .line 120
    :cond_39
    new-instance v5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v2, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    move-object v0, v5

    .line 122
    :goto_3f
    return-object v0

    .line 103
    .end local v1    # "local":Ljava/net/InetAddress;
    .end local v2    # "proxy":Lorg/apache/http/HttpHost;
    .end local v3    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v4    # "secure":Z
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Target host must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v0    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
