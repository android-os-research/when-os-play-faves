.class public Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 67
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v4, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    const-string v6, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v7, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v8, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v9, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v10, "EEE dd MMM yy HH:mm:ss z"

    const-string v11, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v13, "EEE, dd-MM-yyyy HH:mm:ss z"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 89
    if-eqz p1, :cond_e

    .line 90
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_12

    .line 92
    :cond_e
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    .line 94
    :goto_12
    new-instance v0, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 95
    new-instance v0, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    const-string v1, "domain"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 96
    new-instance v0, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const-string v1, "max-age"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 97
    new-instance v0, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const-string v1, "secure"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 98
    new-instance v0, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 99
    new-instance v0, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const-string v1, "expires"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 101
    return-void
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

    .line 159
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p1, :cond_60

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 165
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 166
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 167
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 170
    .local v2, "cookie":Lorg/apache/http/cookie/Cookie;
    if-lez v1, :cond_31

    .line 171
    const-string v3, "; "

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 173
    :cond_31
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 174
    const-string v3, "="

    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 175
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_46

    .line 177
    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    .end local v2    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v3    # "s":Ljava/lang/String;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 180
    .end local v1    # "i":I
    :cond_49
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v2, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v2, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v1

    .line 163
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 2

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 13
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
    if-eqz p1, :cond_98

    .line 113
    if-eqz p2, :cond_90

    .line 116
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "headervalue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, "isNetscapeCookie":Z
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, "i1":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_35

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 121
    const/16 v3, 0x3b

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 122
    .local v3, "i2":I
    if-ne v3, v4, :cond_29

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 126
    :cond_29
    :try_start_29
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_32
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_29 .. :try_end_32} :catch_34

    .line 127
    const/4 v1, 0x1

    .line 130
    goto :goto_35

    .line 128
    :catch_34
    move-exception v4

    .line 132
    .end local v3    # "i2":I
    :cond_35
    :goto_35
    const/4 v3, 0x0

    .line 133
    .local v3, "elems":[Lorg/apache/http/HeaderElement;
    if-eqz v1, :cond_87

    .line 134
    sget-object v4, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 137
    .local v4, "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    instance-of v5, p1, Lorg/apache/http/FormattedHeader;

    const/4 v6, 0x0

    if-eqz v5, :cond_57

    .line 138
    move-object v5, p1

    check-cast v5, Lorg/apache/http/FormattedHeader;

    invoke-interface {v5}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v5

    .line 139
    .local v5, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    new-instance v7, Lorg/apache/http/message/ParserCursor;

    move-object v8, p1

    check-cast v8, Lorg/apache/http/FormattedHeader;

    .line 140
    invoke-interface {v8}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v8

    .line 141
    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .local v7, "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_74

    .line 143
    .end local v5    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v7    # "cursor":Lorg/apache/http/message/ParserCursor;
    :cond_57
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_7f

    .line 147
    new-instance v7, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 148
    .local v7, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v7, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 149
    new-instance v8, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v7}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    invoke-direct {v8, v6, v9}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    move-object v5, v7

    move-object v7, v8

    .line 151
    .local v5, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .local v7, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_74
    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v4, v5, v7}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v9

    aput-object v9, v8, v6

    move-object v3, v8

    .line 152
    .end local v4    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v5    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v7    # "cursor":Lorg/apache/http/message/ParserCursor;
    goto :goto_8b

    .line 145
    .restart local v4    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .local v5, "s":Ljava/lang/String;
    :cond_7f
    new-instance v6, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v7, "Header value is null"

    invoke-direct {v6, v7}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    .end local v4    # "parser":Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v5    # "s":Ljava/lang/String;
    :cond_87
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 155
    :goto_8b
    invoke-virtual {p0, v3, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 114
    .end local v0    # "headervalue":Ljava/lang/String;
    .end local v1    # "isNetscapeCookie":Z
    .end local v2    # "i1":I
    .end local v3    # "elems":[Lorg/apache/http/HeaderElement;
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
