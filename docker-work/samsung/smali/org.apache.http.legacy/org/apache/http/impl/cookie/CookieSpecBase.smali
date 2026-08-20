.class public abstract Lorg/apache/http/impl/cookie/CookieSpecBase;
.super Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected static getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 2
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 73
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 4
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 60
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "defaultPath":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 62
    .local v1, "lastSlashIndex":I
    if-ltz v1, :cond_14

    .line 63
    if-nez v1, :cond_f

    .line 65
    const/4 v1, 0x1

    .line 67
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_14
    return-object v0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 122
    if-eqz p1, :cond_2b

    .line 125
    if-eqz p2, :cond_23

    .line 128
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 129
    .local v1, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    .end local v1    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_20
    goto :goto_c

    .line 133
    :cond_21
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 16
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_69

    aget-object v3, p1, v2

    .line 80
    .local v3, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "value":Ljava/lang/String;
    if-eqz v4, :cond_61

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_61

    .line 86
    new-instance v6, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v6, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static {p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 88
    invoke-static {p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 91
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v7

    .line 92
    .local v7, "attribs":[Lorg/apache/http/NameValuePair;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    .local v8, "j":I
    :goto_36
    if-ltz v8, :cond_5b

    .line 93
    aget-object v9, v7, v8

    .line 94
    .local v9, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "s":Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v10}, Lorg/apache/http/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v11

    .line 99
    .local v11, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v11, :cond_58

    .line 100
    invoke-interface {v9}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v6, v12}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 92
    .end local v9    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_58
    add-int/lit8 v8, v8, -0x1

    goto :goto_36

    .line 103
    .end local v8    # "j":I
    :cond_5b
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v7    # "attribs":[Lorg/apache/http/NameValuePair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 83
    .restart local v3    # "headerelement":Lorg/apache/http/HeaderElement;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_61
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Cookie name may not be empty"

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v3    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_69
    return-object v0
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

    .line 110
    if-eqz p1, :cond_25

    .line 113
    if-eqz p2, :cond_1d

    .line 116
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 117
    .local v1, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v1, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 118
    .end local v1    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    goto :goto_c

    .line 119
    :cond_1c
    return-void

    .line 114
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
