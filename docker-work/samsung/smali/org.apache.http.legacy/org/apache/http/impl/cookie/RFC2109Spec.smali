.class public Lorg/apache/http/impl/cookie/RFC2109Spec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATE_PATTERNS:[Ljava/lang/String;

.field private static final PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 73
    new-instance v0, Lorg/apache/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    .line 75
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 5
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 86
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 87
    if-eqz p1, :cond_e

    .line 88
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    goto :goto_12

    .line 90
    :cond_e
    sget-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    .line 92
    :goto_12
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    .line 93
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 94
    new-instance v0, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 95
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    const-string v1, "domain"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 96
    new-instance v0, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const-string v1, "max-age"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 97
    new-instance v0, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const-string v1, "secure"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 98
    new-instance v0, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 99
    new-instance v0, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const-string v1, "expires"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 101
    return-void
.end method

.method private doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;
    .registers 8
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

    .line 179
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 181
    .local v2, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    .line 182
    .local v3, "version":I
    new-instance v4, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 183
    .local v4, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v5, "Cookie: "

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 184
    const-string v5, "$Version="

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 186
    const-string v5, "; "

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v4, v2, v3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 188
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v5, v4}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "version":I
    .end local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_d

    .line 190
    :cond_46
    return-object v0
.end method

.method private doFormatOneHeader(Ljava/util/List;)Ljava/util/List;
    .registers 7
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

    .line 156
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const v0, 0x7fffffff

    .line 158
    .local v0, "version":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 159
    .local v2, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    if-ge v3, v0, :cond_1d

    .line 160
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    .line 162
    .end local v2    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_1d
    goto :goto_7

    .line 163
    :cond_1e
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 164
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v2, "Cookie"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 165
    const-string v2, ": "

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 166
    const-string v2, "$Version="

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    .line 169
    .local v3, "cooky":Lorg/apache/http/cookie/Cookie;
    const-string v4, "; "

    invoke-virtual {v1, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 170
    move-object v4, v3

    .line 171
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 172
    .end local v3    # "cooky":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    goto :goto_43

    .line 173
    :cond_59
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v3, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v3, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v2
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p3, "version"    # I

    .line 226
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "; "

    if-eqz v0, :cond_2e

    .line 228
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_2e

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    .line 229
    const-string v2, "path"

    invoke-interface {v0, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 230
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 231
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$Path"

    invoke-virtual {p0, p1, v2, v0, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    :cond_2e
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 235
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_4f

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    .line 236
    const-string v2, "domain"

    invoke-interface {v0, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 237
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 238
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$Domain"

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/apache/http/impl/cookie/RFC2109Spec;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    :cond_4f
    return-void
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 4
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

    .line 137
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p1, :cond_30

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 146
    sget-object v0, Lorg/apache/http/impl/cookie/RFC2109Spec;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    :cond_1a
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/RFC2109Spec;->oneHeader:Z

    if-eqz v0, :cond_23

    .line 149
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatOneHeader(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 151
    :cond_23
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 141
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "version"    # I

    .line 204
    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 205
    const-string v0, "="

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 206
    if-eqz p3, :cond_1b

    .line 207
    if-lez p4, :cond_18

    .line 208
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 209
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    goto :goto_1b

    .line 212
    :cond_18
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 215
    :cond_1b
    :goto_1b
    return-void
.end method

.method public getVersion()I
    .registers 2

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 2

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 5
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

    .line 110
    if-eqz p1, :cond_15

    .line 113
    if-eqz p2, :cond_d

    .line 116
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 117
    .local v0, "elems":[Lorg/apache/http/HeaderElement;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 114
    .end local v0    # "elems":[Lorg/apache/http/HeaderElement;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 123
    if-eqz p1, :cond_2b

    .line 126
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    .line 130
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 133
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 134
    return-void

    .line 131
    :cond_1b
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Cookie name may not start with $"

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_23
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Cookie name may not contain blanks"

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "name":Ljava/lang/String;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
