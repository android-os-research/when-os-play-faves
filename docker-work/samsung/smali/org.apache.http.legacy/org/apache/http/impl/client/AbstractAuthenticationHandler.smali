.class public abstract Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    const-string v0, "ntlm"

    const-string v1, "digest"

    const-string v2, "basic"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    .line 75
    return-void
.end method


# virtual methods
.method protected getAuthPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-object v0
.end method

.method protected parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 12
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
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

    .line 80
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_74

    aget-object v3, p1, v2

    .line 84
    .local v3, "header":Lorg/apache/http/Header;
    instance-of v4, v3, Lorg/apache/http/FormattedHeader;

    if-eqz v4, :cond_1f

    .line 85
    move-object v4, v3

    check-cast v4, Lorg/apache/http/FormattedHeader;

    invoke-interface {v4}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v4

    .line 86
    .local v4, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    move-object v5, v3

    check-cast v5, Lorg/apache/http/FormattedHeader;

    invoke-interface {v5}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v5

    .local v5, "pos":I
    goto :goto_34

    .line 88
    .end local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v5    # "pos":I
    :cond_1f
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_6c

    .line 92
    new-instance v5, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 93
    .local v5, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 94
    const/4 v6, 0x0

    move-object v4, v5

    move v5, v6

    .line 96
    .local v4, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v5, "pos":I
    :goto_34
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-ge v5, v6, :cond_47

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 99
    :cond_47
    move v6, v5

    .line 100
    .local v6, "beginIndex":I
    :goto_48
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_5b

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 103
    :cond_5b
    move v7, v5

    .line 104
    .local v7, "endIndex":I
    invoke-virtual {v4, v6, v7}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "s":Ljava/lang/String;
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v5    # "pos":I
    .end local v6    # "beginIndex":I
    .end local v7    # "endIndex":I
    .end local v8    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 90
    .restart local v3    # "header":Lorg/apache/http/Header;
    .local v4, "s":Ljava/lang/String;
    :cond_6c
    new-instance v1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v2, "Header value is null"

    invoke-direct {v1, v2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v4    # "s":Ljava/lang/String;
    :cond_74
    return-object v0
.end method

.method public selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .registers 14
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 119
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const-string v0, "http.authscheme-registry"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 121
    .local v0, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    if-eqz v0, :cond_ec

    .line 125
    const-string v1, "http.auth.scheme-pref"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 127
    .local v1, "authPrefs":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v1, :cond_18

    .line 128
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;

    move-result-object v1

    .line 131
    :cond_18
    iget-object v2, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 132
    iget-object v2, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication schemes in the order of preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 136
    :cond_38
    const/4 v2, 0x0

    .line 137
    .local v2, "authScheme":Lorg/apache/http/auth/AuthScheme;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d0

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    .local v4, "id":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/Header;

    .line 141
    .local v5, "challenge":Lorg/apache/http/Header;
    if-eqz v5, :cond_a6

    .line 142
    iget-object v6, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 143
    iget-object v6, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " authentication scheme selected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 146
    :cond_74
    :try_start_74
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v6
    :try_end_7c
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_7c} :catch_7e

    move-object v2, v6

    .line 147
    goto :goto_d0

    .line 148
    :catch_7e
    move-exception v6

    .line 149
    .local v6, "e":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 150
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authentication scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 153
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_a5
    goto :goto_cc

    .line 155
    :cond_a6
    iget-object v6, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 156
    iget-object v6, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Challenge for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " authentication scheme not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 137
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "challenge":Lorg/apache/http/Header;
    :cond_cc
    :goto_cc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3a

    .line 161
    .end local v3    # "i":I
    :cond_d0
    :goto_d0
    if-eqz v2, :cond_d3

    .line 167
    return-object v2

    .line 163
    :cond_d3
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to respond to any of these challenges: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v1    # "authPrefs":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    :cond_ec
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AuthScheme registry not set in HTTP context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
