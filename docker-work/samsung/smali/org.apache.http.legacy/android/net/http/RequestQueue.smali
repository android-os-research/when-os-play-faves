.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
.field private static final CONNECTION_COUNT:I = 0x4


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyHost(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .registers 1

    iget-object p0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdetermineHost(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetProxyConfig(Landroid/net/http/RequestQueue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCount"    # I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 206
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    .line 210
    new-instance v0, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v0, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    .line 211
    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    .line 213
    nop

    .line 214
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 215
    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .registers 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .line 397
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 398
    :cond_11
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_15

    :cond_14
    :goto_14
    move-object v0, p1

    .line 397
    :goto_15
    return-object v0
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .line 518
    .local p1, "requestQueue":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v0, 0x0

    .line 519
    .local v0, "ret":Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 522
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 523
    .local v3, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/http/Request;

    .line 524
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 525
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v3    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_2f
    return-object v0
.end method

.method private declared-synchronized setProxyConfig()V
    .registers 6

    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 257
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 258
    iput-object v1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_33

    .line 260
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_14
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "host":Ljava/lang/String;
    if-nez v2, :cond_1f

    .line 263
    iput-object v1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_33

    .line 265
    :cond_1f
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 266
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    const-string v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 269
    .end local v2    # "host":Ljava/lang/String;
    :goto_33
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized disablePlatformNotifications()V
    .registers 3

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d

    .line 246
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 249
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_d
    monitor-exit p0

    return-void

    .line 244
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .registers 12

    monitor-enter p0

    .line 413
    :try_start_1
    const-string v0, "dump()"

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "dump":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 420
    .local v1, "count":I
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 421
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 422
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 424
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "hostName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "count":I
    .local v7, "count":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 427
    .local v1, "line":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 428
    .local v5, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 429
    .local v6, "reqIter":Ljava/util/ListIterator;
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/http/Request;

    .line 431
    .local v8, "request":Landroid/net/http/Request;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    nop

    .end local v8    # "request":Landroid/net/http/Request;
    goto :goto_6a

    .line 433
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 434
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move v1, v7

    .end local v1    # "line":Ljava/lang/StringBuilder;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4    # "hostName":Ljava/lang/String;
    .end local v5    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v6    # "reqIter":Ljava/util/ListIterator;
    goto :goto_1e

    .line 437
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v7    # "count":I
    .local v1, "count":I
    :cond_98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_a1

    .line 438
    monitor-exit p0

    return-void

    .line 412
    .end local v0    # "dump":Ljava/lang/StringBuilder;
    .end local v1    # "count":I
    :catchall_a1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .registers 5

    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_18

    .line 224
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_18
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 236
    monitor-exit p0

    return-void

    .line 222
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .registers 3

    monitor-enter p0

    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "ret":Landroid/net/http/Request;
    :try_start_2
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 447
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_13

    move-object v0, v1

    .line 450
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_11
    monitor-exit p0

    return-object v0

    .line 443
    .end local v0    # "ret":Landroid/net/http/Request;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .registers 5
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    monitor-enter p0

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "ret":Landroid/net/http/Request;
    :try_start_2
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 460
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 461
    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/http/Request;

    move-object v0, v2

    .line 462
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 463
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    .line 467
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_24
    monitor-exit p0

    return-object v0

    .line 456
    .end local v0    # "ret":Landroid/net/http/Request;
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .registers 3
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    monitor-enter p0

    .line 474
    :try_start_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 474
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .registers 28
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .line 317
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v9, p0

    if-nez p5, :cond_c

    .line 318
    new-instance v0, Landroid/net/http/LoggingEventHandler;

    invoke-direct {v0}, Landroid/net/http/LoggingEventHandler;-><init>()V

    move-object/from16 v19, v0

    .end local p5    # "eventHandler":Landroid/net/http/EventHandler;
    .local v0, "eventHandler":Landroid/net/http/EventHandler;
    goto :goto_e

    .line 317
    .end local v0    # "eventHandler":Landroid/net/http/EventHandler;
    .restart local p5    # "eventHandler":Landroid/net/http/EventHandler;
    :cond_c
    move-object/from16 v19, p5

    .line 323
    .end local p5    # "eventHandler":Landroid/net/http/EventHandler;
    .local v19, "eventHandler":Landroid/net/http/EventHandler;
    :goto_e
    new-instance v12, Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getPort()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    .local v12, "httpHost":Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v13, v9, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object v10, v0

    move-object/from16 v11, p3

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, v19

    move-object/from16 v18, p4

    invoke-direct/range {v10 .. v18}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 329
    .local v10, "req":Landroid/net/http/Request;
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 331
    iget-object v0, v9, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-static {v0}, Landroid/net/http/RequestQueue$ActivePool;->-$$Nest$fgetmTotalRequest(Landroid/net/http/RequestQueue$ActivePool;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/net/http/RequestQueue$ActivePool;->-$$Nest$fputmTotalRequest(Landroid/net/http/RequestQueue$ActivePool;I)V

    .line 334
    iget-object v0, v9, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 336
    new-instance v11, Landroid/net/http/RequestHandle;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v11
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p5, "bodyProvider"    # Ljava/io/InputStream;
    .param p6, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .line 293
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/compatibility/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/compatibility/WebAddress;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "uri":Landroid/net/compatibility/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;Z)V
    .registers 6
    .param p1, "request"    # Landroid/net/http/Request;
    .param p2, "head"    # Z

    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    goto :goto_a

    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :cond_8
    iget-object v0, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 494
    .local v0, "host":Lorg/apache/http/HttpHost;
    :goto_a
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 495
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    goto :goto_25

    .line 497
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1b
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 498
    .restart local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :goto_25
    if-eqz p2, :cond_2b

    .line 501
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2e

    .line 503
    :cond_2b
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 505
    :goto_2e
    monitor-exit p0

    return-void

    .line 491
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local p1    # "request":Landroid/net/http/Request;
    .end local p2    # "head":Z
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .registers 28
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .line 371
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v10, p0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getPort()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    .local v0, "host":Lorg/apache/http/HttpHost;
    new-instance v8, Landroid/net/http/Request;

    iget-object v14, v10, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/compatibility/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object v11, v8

    move-object/from16 v12, p3

    move-object v13, v0

    move-object/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p5

    move-object/from16 v19, p4

    invoke-direct/range {v11 .. v19}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 378
    .local v8, "req":Landroid/net/http/Request;
    invoke-direct {v10, v0}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v11

    .line 379
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .local v11, "host":Lorg/apache/http/HttpHost;
    iget-object v0, v10, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, v10, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v2, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v2}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v0, v11, v1, v2}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .line 384
    .local v12, "conn":Landroid/net/http/Connection;
    new-instance v13, Landroid/net/http/RequestHandle;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v13
.end method

.method declared-synchronized requestsPending()Z
    .registers 2

    monitor-enter p0

    .line 405
    :try_start_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 405
    .end local p0    # "this":Landroid/net/http/RequestQueue;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .registers 3
    .param p1, "request"    # Landroid/net/http/Request;

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 482
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 488
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    .line 489
    return-void
.end method

.method public startTiming()V
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    .line 510
    return-void
.end method

.method public stopTiming()V
    .registers 2

    .line 513
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    .line 514
    return-void
.end method
