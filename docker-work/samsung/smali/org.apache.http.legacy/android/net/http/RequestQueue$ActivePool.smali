.class Landroid/net/http/RequestQueue$ActivePool;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestQueue$ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivePool"
.end annotation


# instance fields
.field private mConnectionCount:I

.field mIdleCache:Landroid/net/http/IdleCache;

.field mThreads:[Landroid/net/http/ConnectionThread;

.field private mTotalConnection:I

.field private mTotalRequest:I

.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTotalRequest(Landroid/net/http/RequestQueue$ActivePool;)I
    .registers 1

    iget p0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTotalRequest(Landroid/net/http/RequestQueue$ActivePool;I)V
    .registers 2

    iput p1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    return-void
.end method

.method constructor <init>(Landroid/net/http/RequestQueue;I)V
    .registers 7
    .param p1, "this$0"    # Landroid/net/http/RequestQueue;
    .param p2, "connectionCount"    # I

    .line 73
    iput-object p1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/net/http/IdleCache;

    invoke-direct {v0}, Landroid/net/http/IdleCache;-><init>()V

    iput-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    .line 75
    iput p2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    .line 76
    new-array v0, p2, [Landroid/net/http/ConnectionThread;

    iput-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_27

    .line 79
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    new-instance v2, Landroid/net/http/ConnectionThread;

    invoke-static {p1}, Landroid/net/http/RequestQueue;->-$$Nest$fgetmContext(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0, p1}, Landroid/net/http/ConnectionThread;-><init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 82
    .end local v0    # "i":I
    :cond_27
    return-void
.end method


# virtual methods
.method disablePersistence()V
    .registers 4

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_14

    .line 144
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 145
    .local v1, "connection":Landroid/net/http/Connection;
    if-eqz v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/http/Connection;->setCanPersist(Z)V

    .line 143
    .end local v1    # "connection":Landroid/net/http/Connection;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "i":I
    :cond_14
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v0}, Landroid/net/http/IdleCache;->clear()V

    .line 148
    return-void
.end method

.method public getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;

    .line 167
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v0, p2}, Landroid/net/http/RequestQueue;->-$$Nest$mdetermineHost(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object p2

    .line 168
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {v0, p2}, Landroid/net/http/IdleCache;->getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v0

    .line 169
    .local v0, "con":Landroid/net/http/Connection;
    if-nez v0, :cond_26

    .line 170
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 171
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v1}, Landroid/net/http/RequestQueue;->-$$Nest$fgetmContext(Landroid/net/http/RequestQueue;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v2}, Landroid/net/http/RequestQueue;->-$$Nest$fgetmProxyHost(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v2

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v1, p2, v2, v3}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v0

    .line 174
    :cond_26
    return-object v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v0}, Landroid/net/http/RequestQueue;->-$$Nest$fgetmProxyHost(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method getThread(Lorg/apache/http/HttpHost;)Landroid/net/http/ConnectionThread;
    .registers 7
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .line 154
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    .line 156
    aget-object v2, v2, v1

    .line 157
    .local v2, "ct":Landroid/net/http/ConnectionThread;
    iget-object v3, v2, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 158
    .local v3, "connection":Landroid/net/http/Connection;
    if-eqz v3, :cond_19

    iget-object v4, v3, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 159
    monitor-exit v0

    return-object v2

    .line 155
    .end local v2    # "ct":Landroid/net/http/ConnectionThread;
    .end local v3    # "connection":Landroid/net/http/Connection;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 162
    .end local v1    # "i":I
    :cond_1c
    monitor-exit v0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 162
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method logState()V
    .registers 5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "dump":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_27

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 131
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public recycleConnection(Landroid/net/http/Connection;)Z
    .registers 4
    .param p1, "connection"    # Landroid/net/http/Connection;

    .line 177
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mIdleCache:Landroid/net/http/IdleCache;

    invoke-virtual {p1}, Landroid/net/http/Connection;->getHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/http/IdleCache;->cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z

    move-result v0

    return v0
.end method

.method shutdown()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_f

    .line 92
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->requestStop()V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method startConnectionThread()V
    .registers 3

    .line 97
    iget-object v0, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->this$0:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public startTiming()V
    .registers 5

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_14

    .line 104
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    .line 105
    .local v1, "rt":Landroid/net/http/ConnectionThread;
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 103
    .end local v1    # "rt":Landroid/net/http/ConnectionThread;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    .line 109
    iput v0, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    .line 110
    return-void
.end method

.method startup()V
    .registers 3

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v0, v1, :cond_f

    .line 86
    iget-object v1, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/http/ConnectionThread;->start()V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public stopTiming()V
    .registers 8

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "totalTime":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mConnectionCount:I

    if-ge v1, v2, :cond_1e

    .line 115
    iget-object v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mThreads:[Landroid/net/http/ConnectionThread;

    aget-object v2, v2, v1

    .line 116
    .local v2, "rt":Landroid/net/http/ConnectionThread;
    iget-wide v3, v2, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    .line 117
    int-to-long v3, v0

    iget-wide v5, v2, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 119
    :cond_17
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 114
    .end local v2    # "rt":Landroid/net/http/ConnectionThread;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "i":I
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http thread used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms  for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requests and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/http/RequestQueue$ActivePool;->mTotalConnection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new connections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Http"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method
