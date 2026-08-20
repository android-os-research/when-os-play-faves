.class public Lorg/apache/http/client/utils/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .registers 9
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "buffer":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1e

    .line 88
    if-eqz p0, :cond_11

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-lez p2, :cond_1e

    .line 94
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_1e
    if-eqz p3, :cond_28

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 99
    :cond_28
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_2d
    if-eqz p3, :cond_32

    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_32
    if-eqz p4, :cond_3c

    .line 105
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3c
    if-eqz p5, :cond_46

    .line 109
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_46
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p0, "baseURI"    # Ljava/net/URI;
    .param p1, "reference"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .param p0, "baseURI"    # Ljava/net/URI;
    .param p1, "reference"    # Ljava/net/URI;

    .line 189
    if-eqz p0, :cond_3b

    .line 192
    if-eqz p1, :cond_33

    .line 195
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    .line 196
    .local v0, "emptyReference":Z
    :goto_12
    if-eqz v0, :cond_1a

    .line 197
    const-string v2, "#"

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 199
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 200
    .local v2, "resolved":Ljava/net/URI;
    if-eqz v0, :cond_32

    .line 201
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "resolvedString":Ljava/lang/String;
    const/16 v4, 0x23

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 202
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 205
    .end local v3    # "resolvedString":Ljava/lang/String;
    :cond_32
    return-object v2

    .line 193
    .end local v0    # "emptyReference":Z
    .end local v2    # "resolved":Ljava/net/URI;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reference URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;
    .registers 3
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    .registers 10
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "dropFragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 135
    if-eqz p0, :cond_3f

    .line 138
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 139
    nop

    .line 140
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    .line 143
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    .line 145
    if-eqz p2, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    :goto_21
    move-object v6, v0

    .line 139
    invoke-static/range {v1 .. v6}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 147
    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 151
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz p2, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    :goto_39
    move-object v6, v0

    .line 147
    invoke-static/range {v1 .. v6}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 136
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI may nor be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
