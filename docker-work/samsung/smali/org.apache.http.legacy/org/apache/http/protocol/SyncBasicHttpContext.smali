.class public Lorg/apache/http/protocol/SyncBasicHttpContext;
.super Lorg/apache/http/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .registers 2
    .param p1, "parentContext"    # Lorg/apache/http/protocol/HttpContext;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/http/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 55
    .end local p0    # "this":Lorg/apache/http/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/http/protocol/BasicHttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 63
    .end local p0    # "this":Lorg/apache/http/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 60
    monitor-exit p0

    return-void

    .line 58
    .end local p0    # "this":Lorg/apache/http/protocol/SyncBasicHttpContext;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "obj":Ljava/lang/Object;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
