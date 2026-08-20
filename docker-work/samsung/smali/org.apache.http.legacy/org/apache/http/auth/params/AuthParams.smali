.class public final Lorg/apache/http/auth/params/AuthParams;
.super Ljava/lang/Object;
.source "AuthParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 72
    if-eqz p0, :cond_10

    .line 75
    nop

    .line 76
    const-string v0, "http.auth.credential-charset"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 80
    const-string v0, "US-ASCII"

    .line 82
    :cond_f
    return-object v0

    .line 73
    .end local v0    # "charset":Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCredentialCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .line 93
    if-eqz p0, :cond_8

    .line 96
    const-string v0, "http.auth.credential-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 97
    return-void

    .line 94
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
