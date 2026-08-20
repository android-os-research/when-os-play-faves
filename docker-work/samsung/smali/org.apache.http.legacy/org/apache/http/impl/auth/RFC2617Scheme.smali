.class public abstract Lorg/apache/http/impl/auth/RFC2617Scheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_15

    .line 109
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 107
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 95
    :cond_b
    iget-object v0, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .registers 13
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 74
    .local v0, "parser":Lorg/apache/http/message/HeaderValueParser;
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 75
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-interface {v0, p1, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 76
    .local v2, "elements":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-eqz v3, :cond_31

    .line 80
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 81
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 82
    .local v5, "element":Lorg/apache/http/HeaderElement;
    iget-object v6, p0, Lorg/apache/http/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v5    # "element":Lorg/apache/http/HeaderElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 84
    :cond_30
    return-void

    .line 77
    :cond_31
    new-instance v3, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v4, "Authentication challenge is empty"

    invoke-direct {v3, v4}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
