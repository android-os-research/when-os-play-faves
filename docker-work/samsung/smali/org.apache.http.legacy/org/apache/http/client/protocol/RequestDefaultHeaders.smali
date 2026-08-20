.class public Lorg/apache/http/client/protocol/RequestDefaultHeaders;
.super Ljava/lang/Object;
.source "RequestDefaultHeaders.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 7
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_26

    .line 70
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-headers"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 72
    .local v0, "defHeaders":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v0, :cond_25

    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "defHeader":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/apache/http/Header;

    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 75
    .end local v2    # "defHeader":Ljava/lang/Object;
    goto :goto_14

    .line 77
    :cond_25
    return-void

    .line 67
    .end local v0    # "defHeaders":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
