.class public Lorg/apache/http/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lorg/apache/http/cookie/CookieIdentityComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookieIdentityComparator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    monitor-enter p0

    .line 91
    if-eqz p1, :cond_34

    .line 93
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 94
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookieComparator:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_9

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    :cond_20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 100
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_31

    goto :goto_34

    .line 90
    .end local p1    # "cookie":Lorg/apache/http/cookie/Cookie;
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1

    .line 103
    .restart local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    .restart local p1    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_34
    :goto_34
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .registers 5
    .param p1, "cookies"    # [Lorg/apache/http/cookie/Cookie;

    monitor-enter p0

    .line 116
    if-eqz p1, :cond_12

    .line 117
    :try_start_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 118
    .local v2, "cooky":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 117
    .end local v2    # "cooky":Lorg/apache/http/cookie/Cookie;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 115
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    .end local p1    # "cookies":[Lorg/apache/http/cookie/Cookie;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 121
    .restart local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    .restart local p1    # "cookies":[Lorg/apache/http/cookie/Cookie;
    :cond_12
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 165
    monitor-exit p0

    return-void

    .line 163
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    monitor-enter p0

    .line 142
    if-nez p1, :cond_6

    .line 143
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 145
    :cond_6
    const/4 v0, 0x0

    .line 146
    .local v0, "removed":Z
    :try_start_7
    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    .line 149
    const/4 v0, 0x1

    goto :goto_d

    .line 152
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    :cond_24
    monitor-exit p0

    return v0

    .line 141
    .end local v0    # "removed":Z
    .end local p1    # "date":Ljava/util/Date;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 130
    .end local p0    # "this":Lorg/apache/http/impl/client/BasicCookieStore;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
