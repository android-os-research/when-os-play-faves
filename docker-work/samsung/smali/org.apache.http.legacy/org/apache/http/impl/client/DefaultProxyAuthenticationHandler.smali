.class public Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;
.super Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.source "DefaultProxyAuthenticationHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;
    .registers 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_d

    .line 73
    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 74
    .local v0, "headers":[Lorg/apache/http/Header;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;->parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 71
    .end local v0    # "headers":[Lorg/apache/http/Header;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 60
    if-eqz p1, :cond_12

    .line 63
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 64
    .local v0, "status":I
    const/16 v1, 0x197

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 61
    .end local v0    # "status":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
