.class public Lorg/apache/http/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .line 82
    if-nez p1, :cond_3

    .line 83
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public clear()V
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 295
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/HeaderGroup;

    .line 296
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    .line 297
    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 249
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 250
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 251
    const/4 v2, 0x1

    return v2

    .line 248
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public copy()Lorg/apache/http/message/HeaderGroup;
    .registers 4

    .line 289
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 290
    .local v0, "clone":Lorg/apache/http/message/HeaderGroup;
    iget-object v1, v0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    return-object v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .registers 3

    .line 235
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/http/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 152
    .local v0, "headers":[Lorg/apache/http/Header;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 154
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    .line 155
    aget-object v1, v0, v2

    return-object v1

    .line 157
    :cond_11
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 158
    .local v1, "valueBuffer":Lorg/apache/http/util/CharArrayBuffer;
    aget-object v2, v0, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_22
    array-length v3, v0

    if-ge v2, v3, :cond_36

    .line 160
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 161
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 164
    .end local v2    # "i":I
    :cond_36
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 201
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 202
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 203
    return-object v1

    .line 200
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "headersFound":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 182
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 183
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 188
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/Header;

    return-object v1
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 220
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 221
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 222
    return-object v1

    .line 219
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 226
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Lorg/apache/http/HeaderIterator;
    .registers 4

    .line 266
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 280
    new-instance v0, Lorg/apache/http/message/BasicListHeaderIterator;

    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/http/Header;

    .line 94
    if-nez p1, :cond_3

    .line 95
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .registers 5
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .line 129
    invoke-virtual {p0}, Lorg/apache/http/message/HeaderGroup;->clear()V

    .line 130
    if-nez p1, :cond_6

    .line 131
    return-void

    .line 133
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 134
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 136
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public updateHeader(Lorg/apache/http/Header;)V
    .registers 6
    .param p1, "header"    # Lorg/apache/http/Header;

    .line 108
    if-nez p1, :cond_3

    .line 109
    return-void

    .line 111
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 112
    iget-object v1, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 113
    .local v1, "current":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 114
    iget-object v2, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void

    .line 111
    .end local v1    # "current":Lorg/apache/http/Header;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 118
    .end local v0    # "i":I
    :cond_2b
    iget-object v0, p0, Lorg/apache/http/message/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method
