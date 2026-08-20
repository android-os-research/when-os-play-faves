.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss z"


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 79
    if-eqz p1, :cond_e

    .line 80
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_16

    .line 82
    :cond_e
    const-string v0, "EEE, dd-MMM-yyyy HH:mm:ss z"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    .line 84
    :goto_16
    new-instance v0, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 85
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;-><init>()V

    const-string v1, "domain"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 86
    new-instance v0, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const-string v1, "max-age"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 87
    new-instance v0, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const-string v1, "secure"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 88
    new-instance v0, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 89
    new-instance v0, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const-string v1, "expires"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 91
    return-void
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
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

    .line 153
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p1, :cond_60

    .line 156
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 159
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 160
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 161
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 163
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 164
    .local v2, "cookie":Lorg/apache/http/cookie/Cookie;
    if-lez v1, :cond_31

    .line 165
    const-string v3, "; "

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 167
    :cond_31
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 170
    const-string v4, "="

    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 162
    .end local v2    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "s":Ljava/lang/String;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 174
    .end local v1    # "i":I
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v2, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v2, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-object v1

    .line 157
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 2

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 9
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

    .line 126
    if-eqz p1, :cond_5e

    .line 129
    if-eqz p2, :cond_56

    .line 132
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 135
    .local v0, "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 136
    move-object v1, p1

    check-cast v1, Lorg/apache/http/FormattedHeader;

    invoke-interface {v1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 137
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    move-object v4, p1

    check-cast v4, Lorg/apache/http/FormattedHeader;

    .line 138
    invoke-interface {v4}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v4

    .line 139
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .local v3, "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_40

    .line 141
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_23
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 145
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 146
    .local v3, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    new-instance v4, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    move-object v1, v3

    move-object v3, v4

    .line 149
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v3, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_40
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v4, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 143
    .end local v3    # "cursor":Lorg/apache/http/message/ParserCursor;
    .local v1, "s":Ljava/lang/String;
    :cond_4e
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v3, "Header value is null"

    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v0    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v1    # "s":Ljava/lang/String;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
