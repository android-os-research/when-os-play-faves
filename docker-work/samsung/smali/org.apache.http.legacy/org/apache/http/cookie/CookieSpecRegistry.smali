.class public final Lorg/apache/http/cookie/CookieSpecRegistry;
.super Ljava/lang/Object;
.source "CookieSpecRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final registeredSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/CookieSpecFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized getCookieSpec(Ljava/lang/String;)Lorg/apache/http/cookie/CookieSpec;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 135
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 135
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 113
    if-eqz p1, :cond_34

    .line 116
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieSpecFactory;

    .line 117
    .local v0, "factory":Lorg/apache/http/cookie/CookieSpecFactory;
    if-eqz v0, :cond_19

    .line 118
    invoke-interface {v0, p2}, Lorg/apache/http/cookie/CookieSpecFactory;->newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_32

    monitor-exit p0

    return-object v1

    .line 120
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_19
    :try_start_19
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported cookie spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "factory":Lorg/apache/http/cookie/CookieSpecFactory;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_32
    move-exception p1

    goto :goto_3c

    .line 114
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "params":Lorg/apache/http/params/HttpParams;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_32

    .line 112
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":Lorg/apache/http/params/HttpParams;
    :goto_3c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSpecNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/http/cookie/CookieSpecFactory;

    monitor-enter p0

    .line 78
    if-eqz p1, :cond_1a

    .line 81
    if-eqz p2, :cond_12

    .line 84
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    .line 85
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie spec factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_22

    .line 77
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "factory":Lorg/apache/http/cookie/CookieSpecFactory;
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setItems(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/CookieSpecFactory;",
            ">;)V"
        }
    .end annotation

    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;>;"
    monitor-enter p0

    .line 158
    if-nez p1, :cond_5

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 162
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 163
    monitor-exit p0

    return-void

    .line 157
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;>;"
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 93
    if-eqz p1, :cond_12

    .line 96
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry;->registeredSpecs:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 97
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lorg/apache/http/cookie/CookieSpecRegistry;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_10
    move-exception p1

    goto :goto_1a

    .line 94
    .restart local p1    # "id":Ljava/lang/String;
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_10

    .line 92
    .end local p1    # "id":Ljava/lang/String;
    :goto_1a
    monitor-exit p0

    throw p1
.end method
