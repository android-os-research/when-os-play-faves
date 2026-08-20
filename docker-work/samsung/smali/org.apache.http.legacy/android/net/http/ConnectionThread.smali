.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "connectionManager"    # Landroid/net/http/RequestQueue$ConnectionManager;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 47
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    .line 49
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 50
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 51
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 52
    return-void
.end method


# virtual methods
.method requestStop()V
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    .line 56
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 57
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 11

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 74
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 75
    iput-wide v1, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 77
    :goto_a
    iget-boolean v3, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v3, :cond_89

    .line 78
    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 85
    :cond_1c
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v3

    .line 88
    .local v3, "request":Landroid/net/http/Request;
    if-nez v3, :cond_45

    .line 89
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v4

    .line 91
    :try_start_27
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_42

    .line 93
    :try_start_29
    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_42

    .line 95
    goto :goto_30

    .line 94
    :catch_2f
    move-exception v5

    .line 96
    :goto_30
    const/4 v5, 0x0

    :try_start_31
    iput-boolean v5, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 97
    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_40

    .line 98
    nop

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 101
    :cond_40
    monitor-exit v4

    goto :goto_88

    :catchall_42
    move-exception v0

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    throw v0

    .line 106
    :cond_45
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v6, v3, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v4, v5, v6}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 108
    invoke-virtual {v4, v3}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 109
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 110
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v5, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 111
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_71

    .line 114
    :cond_6c
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    .line 116
    :cond_71
    :goto_71
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 118
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_88

    .line 119
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 120
    .local v4, "start":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 121
    iget-wide v8, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    sub-long/2addr v6, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    .line 125
    .end local v3    # "request":Landroid/net/http/Request;
    .end local v4    # "start":J
    :cond_88
    :goto_88
    goto :goto_a

    .line 126
    :cond_89
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v0, :cond_8

    const-string v0, ""

    goto :goto_c

    .end local p0    # "this":Landroid/net/http/ConnectionThread;
    :cond_8
    invoke-virtual {v0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "con":Ljava/lang/String;
    :goto_c
    iget-boolean v1, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v1, :cond_13

    const-string v1, "w"

    goto :goto_15

    :cond_13
    const-string v1, "a"

    .line 131
    .local v1, "active":Ljava/lang/String;
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-object v2

    .line 128
    .end local v0    # "con":Ljava/lang/String;
    .end local v1    # "active":Ljava/lang/String;
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method
