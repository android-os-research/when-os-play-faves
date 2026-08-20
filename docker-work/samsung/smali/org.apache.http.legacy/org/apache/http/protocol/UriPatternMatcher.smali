.class public Lorg/apache/http/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "requestURI"    # Ljava/lang/String;

    .line 92
    if-eqz p1, :cond_5c

    .line 96
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_10
    iget-object v1, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "handler":Ljava/lang/Object;
    if-nez v1, :cond_5b

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "bestMatch":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 110
    if-eqz v2, :cond_53

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_53

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_5a

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 113
    :cond_53
    iget-object v5, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    move-object v2, v4

    .line 117
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_5a
    goto :goto_23

    .line 119
    .end local v2    # "bestMatch":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_5b
    return-object v1

    .line 93
    .end local v0    # "index":I
    .end local v1    # "handler":Ljava/lang/Object;
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URI may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;

    .line 123
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 124
    return v2

    .line 126
    :cond_a
    nop

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 128
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    goto :goto_37

    :cond_36
    move v2, v3

    .line 126
    :goto_37
    return v2
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Ljava/lang/Object;

    .line 67
    if-eqz p1, :cond_12

    .line 70
    if-eqz p2, :cond_a

    .line 73
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void

    .line 71
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request handelr may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI request pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandlers(Ljava/util/Map;)V
    .registers 4
    .param p1, "map"    # Ljava/util/Map;

    .line 84
    if-eqz p1, :cond_d

    .line 87
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    return-void

    .line 85
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map of handlers may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 77
    if-nez p1, :cond_3

    .line 78
    return-void

    .line 80
    :cond_3
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
