.class public Lorg/apache/http/client/methods/HttpOptions;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpOptions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "OPTIONS"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 76
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getAllowedMethods(Lorg/apache/http/HttpResponse;)Ljava/util/Set;
    .registers 10
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_2d

    .line 98
    const-string v0, "Allow"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    .line 99
    .local v0, "it":Lorg/apache/http/HeaderIterator;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v1, "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 101
    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 102
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 103
    .local v3, "elements":[Lorg/apache/http/HeaderElement;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_2b

    aget-object v6, v3, v5

    .line 104
    .local v6, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v6    # "element":Lorg/apache/http/HeaderElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 106
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v3    # "elements":[Lorg/apache/http/HeaderElement;
    :cond_2b
    goto :goto_d

    .line 107
    :cond_2c
    return-object v1

    .line 95
    .end local v0    # "it":Lorg/apache/http/HeaderIterator;
    .end local v1    # "methods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 90
    const-string v0, "OPTIONS"

    return-object v0
.end method
