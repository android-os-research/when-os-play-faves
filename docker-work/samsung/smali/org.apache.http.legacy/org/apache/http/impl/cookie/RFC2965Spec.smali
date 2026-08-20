.class public Lorg/apache/http/impl/cookie/RFC2965Spec;
.super Lorg/apache/http/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 5
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 76
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    const-string v1, "domain"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 77
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const-string v1, "port"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 78
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const-string v1, "commenturl"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 79
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const-string v1, "discard"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 80
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 81
    return-void
.end method

.method private static adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;
    .registers 7
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 224
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x1

    .line 229
    .local v1, "isLocalHost":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 231
    .local v3, "ch":C
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1c

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_19

    goto :goto_1c

    .line 229
    .end local v3    # "ch":C
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 232
    .restart local v3    # "ch":C
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    .line 236
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_1d
    if-eqz v1, :cond_44

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Lorg/apache/http/cookie/CookieOrigin;

    .line 240
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v3

    .line 241
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->isSecure()Z

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 238
    return-object v2

    .line 244
    :cond_44
    return-object p0
.end method

.method private createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 85
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 87
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method private createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 93
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie2;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie2;
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPath(Ljava/lang/String;)V

    .line 95
    invoke-static {p3}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setDomain(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p3}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie2;->setPorts([I)V

    .line 97
    return-object v0
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .registers 9
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p3, "version"    # I

    .line 188
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 190
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_48

    .line 192
    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string v1, "port"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 194
    const-string v1, "; $Port"

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 195
    const-string v1, "=\""

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    .line 197
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v1

    .line 198
    .local v1, "ports":[I
    if-eqz v1, :cond_43

    .line 199
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "len":I
    :goto_2e
    if-ge v2, v3, :cond_43

    .line 200
    if-lez v2, :cond_37

    .line 201
    const-string v4, ","

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 203
    :cond_37
    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 207
    .end local v1    # "ports":[I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_43
    const-string v1, "\""

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 210
    .end local v0    # "s":Ljava/lang/String;
    :cond_48
    return-void
.end method

.method public getVersion()I
    .registers 2

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 3

    .line 255
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 256
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 257
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 258
    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 260
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 172
    if-eqz p1, :cond_15

    .line 175
    if-eqz p2, :cond_d

    .line 178
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    .line 179
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0

    .line 176
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 19
    .param p1, "header"    # Lorg/apache/http/Header;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
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

    .line 104
    move-object/from16 v0, p0

    if-eqz p1, :cond_bd

    .line 107
    if-eqz p2, :cond_b5

    .line 111
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object v1

    .line 113
    .end local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .local v1, "origin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 115
    .local v2, "elems":[Lorg/apache/http/HeaderElement;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_b4

    aget-object v6, v2, v5

    .line 117
    .local v6, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "value":Ljava/lang/String;
    if-eqz v7, :cond_aa

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_aa

    .line 124
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Set-Cookie2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 125
    invoke-direct {v0, v7, v8, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie2(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v9

    .local v9, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    goto :goto_3f

    .line 127
    .end local v9    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :cond_3b
    invoke-direct {v0, v7, v8, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->createCookie(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v9

    .line 131
    .restart local v9    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_3f
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v10

    .line 135
    .local v10, "attribs":[Lorg/apache/http/NameValuePair;
    new-instance v11, Ljava/util/HashMap;

    array-length v12, v10

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 137
    .local v11, "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    .local v12, "j":I
    :goto_4c
    if-ltz v12, :cond_60

    .line 138
    aget-object v13, v10, v12

    .line 139
    .local v13, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v13    # "param":Lorg/apache/http/NameValuePair;
    add-int/lit8 v12, v12, -0x1

    goto :goto_4c

    .line 141
    .end local v12    # "j":I
    :cond_60
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_68
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 142
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/http/NameValuePair;

    .line 143
    .local v14, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p2, v1

    .end local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "s":Ljava/lang/String;
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v1, v15}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v15

    .line 148
    .local v15, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v15, :cond_9a

    .line 149
    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v9, v0}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 151
    .end local v1    # "s":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    .end local v14    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v15    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_68

    .line 152
    .end local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .local v1, "origin":Lorg/apache/http/cookie/CookieOrigin;
    :cond_9f
    move-object/from16 p2, v1

    .end local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v6    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v10    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v11    # "attribmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/NameValuePair;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_16

    .line 119
    .end local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v6    # "headerelement":Lorg/apache/http/HeaderElement;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_aa
    move-object/from16 p2, v1

    .line 120
    .end local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v6    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    :cond_b4
    return-object v3

    .line 108
    .end local v1    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v2    # "elems":[Lorg/apache/http/HeaderElement;
    .end local v3    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local p2    # "origin":Lorg/apache/http/cookie/CookieOrigin;
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

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

    .line 160
    if-eqz p1, :cond_14

    .line 163
    if-eqz p2, :cond_c

    .line 166
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    .line 167
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 168
    return-void

    .line 164
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
