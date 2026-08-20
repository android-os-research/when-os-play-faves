.class public Lorg/apache/http/client/params/HttpClientParams;
.super Ljava/lang/Object;
.source "HttpClientParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 88
    if-eqz p0, :cond_11

    .line 91
    nop

    .line 92
    const-string v0, "http.protocol.cookie-policy"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "cookiePolicy":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 94
    const-string v1, "best-match"

    return-object v1

    .line 96
    :cond_10
    return-object v0

    .line 89
    .end local v0    # "cookiePolicy":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAuthenticating(Lorg/apache/http/params/HttpParams;)Z
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 72
    if-eqz p0, :cond_a

    .line 75
    const/4 v0, 0x1

    .line 76
    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {p0, v1, v0}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    return v0

    .line 73
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isRedirecting(Lorg/apache/http/params/HttpParams;)Z
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 56
    if-eqz p0, :cond_a

    .line 59
    const/4 v0, 0x1

    .line 60
    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {p0, v1, v0}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    return v0

    .line 57
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "value"    # Z

    .line 80
    if-eqz p0, :cond_9

    .line 83
    nop

    .line 84
    const-string v0, "http.protocol.handle-authentication"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 85
    return-void

    .line 81
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "cookiePolicy"    # Ljava/lang/String;

    .line 100
    if-eqz p0, :cond_8

    .line 103
    const-string v0, "http.protocol.cookie-policy"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 104
    return-void

    .line 101
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "value"    # Z

    .line 64
    if-eqz p0, :cond_9

    .line 67
    nop

    .line 68
    const-string v0, "http.protocol.handle-redirects"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 69
    return-void

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
