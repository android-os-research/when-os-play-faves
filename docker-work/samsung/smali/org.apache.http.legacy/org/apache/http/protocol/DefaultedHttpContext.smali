.class public final Lorg/apache/http/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaults:Lorg/apache/http/protocol/HttpContext;

.field private final local:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .param p1, "local"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "defaults"    # Lorg/apache/http/protocol/HttpContext;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_a

    .line 59
    iput-object p1, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    .line 60
    iput-object p2, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    .line 61
    return-void

    .line 57
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 66
    iget-object v1, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 68
    :cond_f
    return-object v0
.end method

.method public getDefaults()Lorg/apache/http/protocol/HttpContext;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->defaults:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/apache/http/protocol/DefaultedHttpContext;->local:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method
