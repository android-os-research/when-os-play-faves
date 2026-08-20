.class public Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_23

    .line 64
    if-eqz p2, :cond_1b

    .line 68
    const/4 v0, -0x1

    .line 70
    .local v0, "version":I
    :try_start_5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    .line 73
    goto :goto_d

    .line 71
    :catch_b
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .line 74
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_d
    if-ltz v0, :cond_13

    .line 77
    invoke-interface {p1, v0}, Lorg/apache/http/cookie/SetCookie;->setVersion(I)V

    .line 78
    return-void

    .line 75
    :cond_13
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Invalid cookie version."

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "version":I
    :cond_1b
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_1f

    .line 88
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_1e

    .line 89
    instance-of v0, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    .line 90
    const-string v1, "version"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1e

    .line 91
    :cond_16
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v1, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1e
    :goto_1e
    return-void

    .line 86
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
