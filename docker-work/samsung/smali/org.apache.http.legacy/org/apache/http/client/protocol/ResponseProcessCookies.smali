.class public Lorg/apache/http/client/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;
.source "ResponseProcessCookies.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    .line 73
    return-void
.end method

.method private cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .registers 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method private processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .registers 14
    .param p1, "iterator"    # Lorg/apache/http/HeaderIterator;
    .param p2, "cookieSpec"    # Lorg/apache/http/cookie/CookieSpec;
    .param p3, "cookieOrigin"    # Lorg/apache/http/cookie/CookieOrigin;
    .param p4, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .line 122
    const-string v0, "\". "

    :goto_2
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 123
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v1

    .line 125
    .local v1, "header":Lorg/apache/http/Header;
    :try_start_c
    invoke-interface {p2, v1, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;
    :try_end_20
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_c .. :try_end_20} :catch_82

    .line 128
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    :try_start_20
    invoke-interface {p2, v4, p3}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 129
    invoke-interface {p4, v4}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 131
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 133
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cookie accepted: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-direct {p0, v4}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_4e
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_20 .. :try_end_4e} :catch_4f

    .line 144
    :cond_4e
    goto :goto_80

    .line 137
    :catch_4f
    move-exception v5

    .line 138
    .local v5, "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :try_start_50
    iget-object v6, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 140
    iget-object v6, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cookie rejected: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 141
    invoke-direct {p0, v4}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_80
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_50 .. :try_end_80} :catch_82

    .line 145
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v5    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :cond_80
    :goto_80
    goto :goto_14

    .line 151
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_81
    goto :goto_af

    .line 146
    :catch_82
    move-exception v2

    .line 147
    .local v2, "ex":Lorg/apache/http/cookie/MalformedCookieException;
    iget-object v3, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 148
    iget-object v3, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cookie header: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual {v2}, Lorg/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 152
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :cond_af
    :goto_af
    goto/16 :goto_2

    .line 153
    :cond_b1
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-eqz p1, :cond_5b

    .line 80
    if-eqz p2, :cond_53

    .line 85
    const-string v0, "http.cookie-store"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    .line 87
    .local v0, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v0, :cond_16

    .line 88
    iget-object v1, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Cookie store not available in HTTP context"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 89
    return-void

    .line 92
    :cond_16
    const-string v1, "http.cookie-spec"

    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieSpec;

    .line 94
    .local v1, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    if-nez v1, :cond_28

    .line 95
    iget-object v2, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "CookieSpec not available in HTTP context"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 99
    :cond_28
    const-string v2, "http.cookie-origin"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/CookieOrigin;

    .line 101
    .local v2, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    if-nez v2, :cond_3a

    .line 102
    iget-object v3, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "CookieOrigin not available in HTTP context"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 103
    return-void

    .line 105
    :cond_3a
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 106
    .local v3, "it":Lorg/apache/http/HeaderIterator;
    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    .line 109
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v4

    if-lez v4, :cond_52

    .line 112
    const-string v4, "Set-Cookie2"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 113
    invoke-direct {p0, v3, v1, v2, v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    .line 115
    :cond_52
    return-void

    .line 81
    .end local v0    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v1    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v2    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v3    # "it":Lorg/apache/http/HeaderIterator;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
