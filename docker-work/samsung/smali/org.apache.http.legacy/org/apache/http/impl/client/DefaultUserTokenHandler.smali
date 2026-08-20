.class public Lorg/apache/http/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lorg/apache/http/client/UserTokenHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;
    .registers 4
    .param p0, "authState"    # Lorg/apache/http/auth/AuthState;

    .line 84
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 85
    .local v0, "scheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 86
    invoke-virtual {p0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v1

    .line 87
    .local v1, "creds":Lorg/apache/http/auth/Credentials;
    if-eqz v1, :cond_1d

    .line 88
    invoke-interface {v1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    return-object v2

    .line 91
    .end local v1    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "userPrincipal":Ljava/security/Principal;
    const-string v1, "http.auth.target-scope"

    invoke-interface {p1, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/auth/AuthState;

    .line 60
    .local v1, "targetAuthState":Lorg/apache/http/auth/AuthState;
    if-eqz v1, :cond_1d

    .line 61
    invoke-static {v1}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1d

    .line 63
    const-string v2, "http.auth.proxy-scope"

    invoke-interface {p1, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/auth/AuthState;

    .line 65
    .local v2, "proxyAuthState":Lorg/apache/http/auth/AuthState;
    invoke-static {v2}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lorg/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v0

    .line 69
    .end local v2    # "proxyAuthState":Lorg/apache/http/auth/AuthState;
    :cond_1d
    if-nez v0, :cond_37

    .line 70
    const-string v2, "http.connection"

    invoke-interface {p1, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ManagedClientConnection;

    .line 72
    .local v2, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 73
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 74
    .local v3, "sslsession":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_37

    .line 75
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 80
    .end local v2    # "conn":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v3    # "sslsession":Ljavax/net/ssl/SSLSession;
    :cond_37
    return-object v0
.end method
