.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$IdleReaper;,
        Landroid/net/http/IdleCache$Entry;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

.field private static final IDLE_CACHE_MAX:I = 0x8

.field private static final TIMEOUT:I = 0x1770


# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCount(Landroid/net/http/IdleCache;)I
    .registers 1

    iget p0, p0, Landroid/net/http/IdleCache;->mCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmThread(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)V
    .registers 2

    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIdle(Landroid/net/http/IdleCache;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/net/http/IdleCache$Entry;

    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 50
    iput v1, p0, Landroid/net/http/IdleCache;->mCached:I

    .line 51
    iput v1, p0, Landroid/net/http/IdleCache;->mReused:I

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_22

    .line 55
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    new-instance v3, Landroid/net/http/IdleCache$Entry;

    invoke-direct {v3, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 57
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private declared-synchronized clearIdle()V
    .registers 7

    monitor-enter p0

    .line 127
    :try_start_1
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v0, :cond_2f

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "time":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2f

    .line 130
    iget-object v3, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v3, v3, v2

    .line 131
    .local v3, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v4, v3, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_2c

    iget-wide v4, v3, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2c

    .line 132
    const/4 v4, 0x0

    iput-object v4, v3, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 133
    iget-object v5, v3, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v5}, Landroid/net/http/Connection;->closeConnection()V

    .line 134
    iput-object v4, v3, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 135
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_31

    .line 129
    .end local v3    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local p0    # "this":Landroid/net/http/IdleCache;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 139
    .end local v0    # "time":J
    .end local v2    # "i":I
    :cond_2f
    monitor-exit p0

    return-void

    .line 126
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .registers 11
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "connection"    # Landroid/net/http/Connection;

    monitor-enter p0

    .line 66
    const/4 v0, 0x0

    .line 72
    .local v0, "ret":Z
    :try_start_2
    iget v1, p0, Landroid/net/http/IdleCache;->mCount:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3a

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 74
    .local v3, "time":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_3a

    .line 75
    iget-object v5, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v5, v5, v1

    .line 76
    .local v5, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v6, v5, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-nez v6, :cond_37

    .line 77
    iput-object p1, v5, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 78
    iput-object p2, v5, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 79
    const-wide/16 v6, 0x1770

    add-long/2addr v6, v3

    iput-wide v6, v5, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    .line 80
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 82
    const/4 v0, 0x1

    .line 83
    iget-object v2, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    if-nez v2, :cond_3a

    .line 84
    new-instance v2, Landroid/net/http/IdleCache$IdleReaper;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper-IA;)V

    iput-object v2, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 85
    invoke-virtual {v2}, Landroid/net/http/IdleCache$IdleReaper;->start()V
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_3c

    goto :goto_3a

    .line 74
    .end local v5    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local p0    # "this":Landroid/net/http/IdleCache;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 91
    .end local v1    # "i":I
    .end local v3    # "time":J
    :cond_3a
    :goto_3a
    monitor-exit p0

    return v0

    .line 65
    .end local v0    # "ret":Z
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    .end local p2    # "connection":Landroid/net/http/Connection;
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clear()V
    .registers 5

    monitor-enter p0

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v1, :cond_25

    const/16 v1, 0x8

    if-ge v0, v1, :cond_25

    .line 116
    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v1, v1, v0

    .line 117
    .local v1, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v2, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_22

    .line 118
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 119
    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    .line 120
    iput-object v2, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 121
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_27

    .line 115
    .end local v1    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local p0    # "this":Landroid/net/http/IdleCache;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "i":I
    :cond_25
    monitor-exit p0

    return-void

    .line 114
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .registers 7
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "ret":Landroid/net/http/Connection;
    :try_start_2
    iget v1, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v1, :cond_2b

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2b

    .line 99
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v2, v2, v1

    .line 100
    .local v2, "entry":Landroid/net/http/IdleCache$Entry;
    iget-object v3, v2, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 101
    .local v3, "eHost":Lorg/apache/http/HttpHost;
    if-eqz v3, :cond_28

    invoke-virtual {v3, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 102
    iget-object v4, v2, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    move-object v0, v4

    .line 103
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 104
    iput-object v4, v2, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 105
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_2d

    .line 107
    goto :goto_2b

    .line 98
    .end local v2    # "entry":Landroid/net/http/IdleCache$Entry;
    .end local v3    # "eHost":Lorg/apache/http/HttpHost;
    .end local p0    # "this":Landroid/net/http/IdleCache;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 111
    .end local v1    # "i":I
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-object v0

    .line 94
    .end local v0    # "ret":Landroid/net/http/Connection;
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
