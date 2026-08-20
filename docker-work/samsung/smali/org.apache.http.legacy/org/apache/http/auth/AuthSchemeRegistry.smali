.class public final Lorg/apache/http/auth/AuthSchemeRegistry;
.super Ljava/lang/Object;
.source "AuthSchemeRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final registeredSchemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    .line 63
    return-void
.end method


# virtual methods
.method public declared-synchronized getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    if-eqz p1, :cond_34

    .line 122
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthSchemeFactory;

    .line 123
    .local v0, "factory":Lorg/apache/http/auth/AuthSchemeFactory;
    if-eqz v0, :cond_19

    .line 124
    invoke-interface {v0, p2}, Lorg/apache/http/auth/AuthSchemeFactory;->newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_32

    monitor-exit p0

    return-object v1

    .line 126
    .end local p0    # "this":Lorg/apache/http/auth/AuthSchemeRegistry;
    :cond_19
    :try_start_19
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported authentication scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0    # "factory":Lorg/apache/http/auth/AuthSchemeFactory;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":Lorg/apache/http/params/HttpParams;
    :catchall_32
    move-exception p1

    goto :goto_3c

    .line 120
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "params":Lorg/apache/http/params/HttpParams;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_32

    .line 118
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":Lorg/apache/http/params/HttpParams;
    :goto_3c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSchemeNames()Ljava/util/List;
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

    .line 137
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 137
    .end local p0    # "this":Lorg/apache/http/auth/AuthSchemeRegistry;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/http/auth/AuthSchemeFactory;

    monitor-enter p0

    .line 83
    if-eqz p1, :cond_1a

    .line 86
    if-eqz p2, :cond_12

    .line 89
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    .line 90
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Lorg/apache/http/auth/AuthSchemeRegistry;
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scheme factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_22

    .line 82
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "factory":Lorg/apache/http/auth/AuthSchemeFactory;
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
            "Lorg/apache/http/auth/AuthSchemeFactory;",
            ">;)V"
        }
    .end annotation

    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;>;"
    monitor-enter p0

    .line 147
    if-nez p1, :cond_5

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    .line 152
    monitor-exit p0

    return-void

    .line 146
    .end local p0    # "this":Lorg/apache/http/auth/AuthSchemeRegistry;
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;>;"
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 99
    if-eqz p1, :cond_12

    .line 102
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/auth/AuthSchemeRegistry;->registeredSchemes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 103
    monitor-exit p0

    return-void

    .line 98
    .end local p0    # "this":Lorg/apache/http/auth/AuthSchemeRegistry;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_10
    move-exception p1

    goto :goto_1a

    .line 100
    .restart local p1    # "name":Ljava/lang/String;
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_10

    .line 98
    .end local p1    # "name":Ljava/lang/String;
    :goto_1a
    monitor-exit p0

    throw p1
.end method
