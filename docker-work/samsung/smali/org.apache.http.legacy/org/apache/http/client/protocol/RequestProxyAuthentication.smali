.class public Lorg/apache/http/client/protocol/RequestProxyAuthentication;
.super Ljava/lang/Object;
.source "RequestProxyAuthentication.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    .line 66
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 10
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_6f

    .line 73
    if-eqz p2, :cond_67

    .line 77
    const-string v0, "Proxy-Authorization"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 78
    return-void

    .line 82
    :cond_d
    const-string v0, "http.auth.proxy-scope"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthState;

    .line 84
    .local v0, "authState":Lorg/apache/http/auth/AuthState;
    if-nez v0, :cond_18

    .line 85
    return-void

    .line 88
    :cond_18
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 89
    .local v1, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-nez v1, :cond_1f

    .line 90
    return-void

    .line 93
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 94
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_2d

    .line 95
    iget-object v3, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "User credentials not available"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 98
    :cond_2d
    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v3

    if-nez v3, :cond_39

    invoke-interface {v1}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v3

    if-nez v3, :cond_66

    .line 100
    :cond_39
    :try_start_39
    invoke-interface {v1, v2, p1}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_40
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_39 .. :try_end_40} :catch_41

    .line 105
    goto :goto_66

    .line 101
    :catch_41
    move-exception v3

    .line 102
    .local v3, "ex":Lorg/apache/http/auth/AuthenticationException;
    iget-object v4, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 103
    iget-object v4, p0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 107
    .end local v3    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :cond_66
    :goto_66
    return-void

    .line 74
    .end local v0    # "authState":Lorg/apache/http/auth/AuthState;
    .end local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
