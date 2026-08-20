.class public final Lorg/apache/http/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x2


# instance fields
.field private defaultMax:I

.field private final maxPerHostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "defaultMax"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public getDefaultMax()I
    .registers 2

    .line 75
    iget v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 4
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 99
    if-eqz p1, :cond_14

    .line 103
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "max":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 107
    :cond_11
    iget v1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    return v1

    .line 100
    .end local v0    # "max":Ljava/lang/Integer;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultMaxPerRoute(I)V
    .registers 4
    .param p1, "max"    # I

    .line 79
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 83
    iput p1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    .line 84
    return-void

    .line 80
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .registers 5
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "max"    # I

    .line 87
    if-eqz p1, :cond_17

    .line 91
    const/4 v0, 0x1

    if-lt p2, v0, :cond_f

    .line 95
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void

    .line 92
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxForRoutes(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Integer;>;"
    if-nez p1, :cond_3

    .line 113
    return-void

    .line 115
    :cond_3
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    return-void
.end method
