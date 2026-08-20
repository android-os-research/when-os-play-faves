.class public final Lorg/apache/http/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final registeredSchemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/scheme/Scheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    .line 69
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 120
    if-eqz p1, :cond_f

    .line 125
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 126
    .local v0, "found":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0

    .line 119
    .end local v0    # "found":Lorg/apache/http/conn/scheme/Scheme;
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_17

    .line 121
    .restart local p1    # "name":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    .line 119
    .end local p1    # "name":Ljava/lang/String;
    :goto_17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    .line 84
    .local v0, "found":Lorg/apache/http/conn/scheme/Scheme;
    if-eqz v0, :cond_9

    .line 88
    monitor-exit p0

    return-object v0

    .line 85
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_28

    .line 82
    .end local v0    # "found":Lorg/apache/http/conn/scheme/Scheme;
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    monitor-enter p0

    .line 104
    if-eqz p1, :cond_f

    .line 107
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 103
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :catchall_d
    move-exception p1

    goto :goto_17

    .line 105
    .restart local p1    # "host":Lorg/apache/http/HttpHost;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    .line 103
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :goto_17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getSchemeNames()Ljava/util/List;
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

    .line 174
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 174
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 4
    .param p1, "sch"    # Lorg/apache/http/conn/scheme/Scheme;

    monitor-enter p0

    .line 141
    if-eqz p1, :cond_13

    .line 144
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 145
    .local v0, "old":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0

    .line 140
    .end local v0    # "old":Lorg/apache/http/conn/scheme/Scheme;
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catchall_11
    move-exception p1

    goto :goto_1b

    .line 142
    .restart local p1    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_11

    .line 140
    .end local p1    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :goto_1b
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
            "Lorg/apache/http/conn/scheme/Scheme;",
            ">;)V"
        }
    .end annotation

    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/conn/scheme/Scheme;>;"
    monitor-enter p0

    .line 184
    if-nez p1, :cond_5

    .line 185
    monitor-exit p0

    return-void

    .line 187
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 189
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/conn/scheme/Scheme;>;"
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 158
    if-eqz p1, :cond_f

    .line 163
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 164
    .local v0, "gone":Lorg/apache/http/conn/scheme/Scheme;
    monitor-exit p0

    return-object v0

    .line 157
    .end local v0    # "gone":Lorg/apache/http/conn/scheme/Scheme;
    .end local p0    # "this":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_d
    move-exception p1

    goto :goto_17

    .line 159
    .restart local p1    # "name":Ljava/lang/String;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    .line 157
    .end local p1    # "name":Ljava/lang/String;
    :goto_17
    monitor-exit p0

    throw p1
.end method
