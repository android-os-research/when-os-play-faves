.class public Lorg/apache/http/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

.field private final oneHeader:Z

.field private strict:Lorg/apache/http/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 3
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    .line 68
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->oneHeader:Z

    .line 69
    return-void
.end method

.method private getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;
    .registers 3

    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_d

    .line 84
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    .line 86
    :cond_d
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method

.method private getNetscape()Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
    .registers 3

    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    if-nez v0, :cond_11

    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    .line 92
    .local v0, "patterns":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 93
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    .line 95
    :cond_a
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    .line 97
    .end local v0    # "patterns":[Ljava/lang/String;
    :cond_11
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->netscape:Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    return-object v0
.end method

.method private getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;
    .registers 4

    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_f

    .line 77
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    .line 79
    :cond_f
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpec;->strict:Lorg/apache/http/impl/cookie/RFC2965Spec;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 167
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p1, :cond_34

    .line 170
    const v0, 0x7fffffff

    .line 171
    .local v0, "version":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 172
    .local v2, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    if-ge v3, v0, :cond_1f

    .line 173
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    .line 175
    .end local v2    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_1f
    goto :goto_9

    .line 176
    :cond_20
    if-lez v0, :cond_2b

    .line 177
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 179
    :cond_2b
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 168
    .end local v0    # "version":I
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .registers 2

    .line 184
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 2

    .line 188
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 153
    if-eqz p1, :cond_24

    .line 156
    if-eqz p2, :cond_1c

    .line 159
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_13

    .line 160
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0

    .line 162
    :cond_13
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0

    .line 157
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 10
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

    .line 103
    if-eqz p1, :cond_4d

    .line 106
    if-eqz p2, :cond_45

    .line 109
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 110
    .local v0, "helems":[Lorg/apache/http/HeaderElement;
    const/4 v1, 0x0

    .line 111
    .local v1, "versioned":Z
    const/4 v2, 0x0

    .line 112
    .local v2, "netscape":Z
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_25

    aget-object v5, v0, v4

    .line 113
    .local v5, "helem":Lorg/apache/http/HeaderElement;
    const-string v6, "version"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 114
    const/4 v1, 0x1

    .line 116
    :cond_19
    const-string v6, "expires"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 117
    const/4 v2, 0x1

    .line 112
    .end local v5    # "helem":Lorg/apache/http/HeaderElement;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 120
    :cond_25
    nop

    .line 124
    if-eqz v1, :cond_31

    .line 125
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 126
    :cond_31
    if-eqz v2, :cond_3c

    .line 130
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getNetscape()Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 132
    :cond_3c
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 107
    .end local v0    # "helems":[Lorg/apache/http/HeaderElement;
    .end local v1    # "versioned":Z
    .end local v2    # "netscape":Z
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_4d
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

    .line 139
    if-eqz p1, :cond_22

    .line 142
    if-eqz p2, :cond_1a

    .line 145
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_12

    .line 146
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getStrict()Lorg/apache/http/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965Spec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_19

    .line 148
    :cond_12
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 150
    :goto_19
    return-void

    .line 143
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
