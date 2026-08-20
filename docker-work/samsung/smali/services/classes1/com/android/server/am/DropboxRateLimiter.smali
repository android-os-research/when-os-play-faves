.class public Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DropboxRateLimiter$DefaultClock;,
        Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;,
        Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;,
        Lcom/android/server/am/DropboxRateLimiter$Clock;
    }
.end annotation


# static fields
.field public static final RATE_LIMIT_ALLOWED_ENTRIES:I = 0x6

.field public static final RATE_LIMIT_BUFFER_DURATION:J = 0x927c0L

.field public static final RATE_LIMIT_BUFFER_EXPIRY:J = 0x1b7740L


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mErrorClusterRecords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLastMapCleanUp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>(Lcom/android/server/am/DropboxRateLimiter$DefaultClock-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 47
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    return-void
.end method


# virtual methods
.method public errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .registers 9

    .line 97
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    return-void

    .line 99
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_30

    .line 100
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_2d

    .line 101
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 105
    :cond_30
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    return-void
.end method

.method public final recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I
    .registers 3

    if-eqz p1, :cond_10

    .line 91
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_a

    goto :goto_10

    .line 92
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .registers 11

    .line 59
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    invoke-interface {v0}, Lcom/android/server/am/DropboxRateLimiter$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 62
    :try_start_9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    .line 64
    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_31

    .line 66
    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;JI)V

    .line 67
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 71
    :cond_31
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/32 v6, 0x927c0

    cmp-long p1, p1, v6

    if-lez p1, :cond_4f

    .line 72
    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p1

    .line 73
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setStartTime(J)V

    .line 74
    invoke-virtual {v3, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setCount(I)V

    .line 75
    new-instance p2, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p2, p0, v5, p1}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p2

    .line 78
    :cond_4f
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementCount()V

    .line 79
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p1

    const/4 p2, 0x6

    if-le p1, p2, :cond_64

    .line 80
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p2

    invoke-direct {p1, p0, v4, p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 82
    :cond_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_9 .. :try_end_65} :catchall_6b

    .line 83
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    return-object p1

    :catchall_6b
    move-exception p0

    .line 82
    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method
