.class public Lorg/apache/http/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"

# interfaces
.implements Lorg/apache/http/client/protocol/ClientContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final context:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .registers 4
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_8

    .line 55
    iput-object p1, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    .line 56
    return-void

    .line 54
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setAuthSchemePref(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.auth.scheme-pref"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public setAuthSchemeRegistry(Lorg/apache/http/auth/AuthSchemeRegistry;)V
    .registers 4
    .param p1, "registry"    # Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 63
    iget-object v0, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.authscheme-registry"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public setCookieSpecRegistry(Lorg/apache/http/cookie/CookieSpecRegistry;)V
    .registers 4
    .param p1, "registry"    # Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 59
    iget-object v0, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookiespec-registry"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .registers 4
    .param p1, "store"    # Lorg/apache/http/client/CookieStore;

    .line 67
    iget-object v0, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V
    .registers 4
    .param p1, "provider"    # Lorg/apache/http/client/CredentialsProvider;

    .line 71
    iget-object v0, p0, Lorg/apache/http/client/protocol/ClientContextConfigurer;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method
