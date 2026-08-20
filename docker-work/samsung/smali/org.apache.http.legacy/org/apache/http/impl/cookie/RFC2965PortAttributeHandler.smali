.class public Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .registers 7
    .param p0, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 72
    .local v1, "ports":[I
    const/4 v2, 0x0

    .line 73
    .local v2, "i":I
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 74
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 75
    aget v3, v1, v2

    if-ltz v3, :cond_29

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 76
    :cond_29
    new-instance v3, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v4, "Invalid Port attribute."

    invoke-direct {v3, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "ports":[I
    .end local p0    # "portValue":Ljava/lang/String;
    throw v3
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_31} :catch_33

    .line 83
    .end local v2    # "i":I
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "ports":[I
    .restart local p0    # "portValue":Ljava/lang/String;
    :cond_31
    nop

    .line 84
    return-object v1

    .line 80
    :catch_33
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Port attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static portMatch(I[I)Z
    .registers 6
    .param p0, "port"    # I
    .param p1, "ports"    # [I

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "portInList":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "len":I
    :goto_3
    if-ge v1, v2, :cond_e

    .line 99
    aget v3, p1, v1

    if-ne p0, v3, :cond_b

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_e

    .line 98
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 104
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_e
    :goto_e
    return v0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    .line 153
    if-eqz p1, :cond_34

    .line 156
    if-eqz p2, :cond_2c

    .line 159
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v0

    .line 160
    .local v0, "port":I
    instance-of v1, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v1, :cond_2a

    move-object v1, p1

    check-cast v1, Lorg/apache/http/cookie/ClientCookie;

    .line 161
    const-string v2, "port"

    invoke-interface {v1, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 162
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 164
    return v2

    .line 166
    :cond_1f
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 167
    return v2

    .line 170
    :cond_2a
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v0    # "port":I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 112
    if-eqz p1, :cond_1d

    .line 115
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_1c

    .line 116
    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    .line 117
    .local v0, "cookie2":Lorg/apache/http/cookie/SetCookie2;
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 118
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v1

    .line 119
    .local v1, "ports":[I
    invoke-interface {v0, v1}, Lorg/apache/http/cookie/SetCookie2;->setPorts([I)V

    .line 122
    .end local v0    # "cookie2":Lorg/apache/http/cookie/SetCookie2;
    .end local v1    # "ports":[I
    :cond_1c
    return-void

    .line 113
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

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

    .line 130
    if-eqz p1, :cond_33

    .line 133
    if-eqz p2, :cond_2b

    .line 136
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v0

    .line 137
    .local v0, "port":I
    instance-of v1, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v1, :cond_2a

    move-object v1, p1

    check-cast v1, Lorg/apache/http/cookie/ClientCookie;

    .line 138
    const-string v2, "port"

    invoke-interface {v1, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 139
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_2a

    .line 140
    :cond_22
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v2, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2a
    :goto_2a
    return-void

    .line 134
    .end local v0    # "port":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
