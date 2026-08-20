.class public final Lorg/apache/http/params/BasicHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "BasicHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6257f1e0a974410fL


# instance fields
.field private parameters:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    .line 125
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/params/BasicHttpParams;

    .line 143
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    .line 144
    return-object v0
.end method

.method public copy()Lorg/apache/http/params/HttpParams;
    .registers 2

    .line 136
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 137
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    .line 138
    return-object v0
.end method

.method protected copyParams(Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .param p1, "target"    # Lorg/apache/http/params/HttpParams;

    .line 154
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 155
    return-void

    .line 157
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, "iter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, "me":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 162
    .end local v1    # "me":Ljava/util/Map$Entry;
    :cond_2e
    goto :goto_d

    .line 163
    :cond_2f
    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "param":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_9

    .line 73
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    :cond_9
    return-object v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/http/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 88
    return v1

    .line 91
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_13
    return v1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    .line 82
    :cond_b
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 108
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_c
    return-void
.end method
