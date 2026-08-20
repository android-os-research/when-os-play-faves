.class public Lorg/apache/http/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private map:Ljava/util/Map;

.field private final parentContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .registers 3
    .param p1, "parentContext"    # Lorg/apache/http/protocol/HttpContext;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/apache/http/protocol/HttpContext;

    .line 63
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_16

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 71
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :cond_b
    if-nez v0, :cond_15

    iget-object v1, p0, Lorg/apache/http/protocol/BasicHttpContext;->parentContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_15

    .line 74
    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :cond_15
    return-object v0

    .line 67
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 90
    if-eqz p1, :cond_d

    .line 93
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 94
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 96
    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 80
    if-eqz p1, :cond_13

    .line 83
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 86
    :cond_d
    iget-object v0, p0, Lorg/apache/http/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void

    .line 81
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
