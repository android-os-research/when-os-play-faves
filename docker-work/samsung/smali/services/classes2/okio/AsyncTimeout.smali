.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field public static final IDLE_TIMEOUT_MILLIS:J

.field public static final IDLE_TIMEOUT_NANOS:J

.field public static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field public static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public inQueue:Z

.field public next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public timeoutAt:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method public static awaitTimeout()Lokio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 343
    const-class v0, Lokio/AsyncTimeout;

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 348
    sget-wide v5, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 349
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_25

    .line 350
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :cond_25
    return-object v2

    .line 354
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_40

    const-wide/32 v5, 0xf4240

    .line 360
    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 362
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 367
    :cond_40
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 368
    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-object v1
.end method

.method public static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    .line 129
    iget-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 130
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 p0, 0x0

    .line 132
    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    .line 137
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 9

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 87
    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 88
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2f

    if-eqz p3, :cond_2f

    .line 95
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_2f
    if-eqz v3, :cond_35

    add-long/2addr p1, v1

    .line 97
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_35
    if-eqz p3, :cond_62

    .line 99
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_3d
    invoke-virtual {p0, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 106
    sget-object p3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 107
    :goto_43
    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_53

    invoke-virtual {v3, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_50

    goto :goto_53

    .line 106
    :cond_50
    iget-object p3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    goto :goto_43

    .line 108
    :cond_53
    :goto_53
    iget-object p1, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    iput-object p0, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 110
    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne p3, p0, :cond_60

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_68

    .line 116
    :cond_60
    monitor-exit v0

    return-void

    .line 101
    :cond_62
    :try_start_62
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 6

    .line 73
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 74
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void

    .line 73
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unbalanced enter/exit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 286
    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    .line 120
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 122
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result p0

    return p0
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 295
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string/jumbo v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 297
    invoke-virtual {p0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_d
    return-object p0
.end method

.method public final remainingNanos(J)J
    .registers 5

    .line 145
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3

    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3

    .line 232
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method public timedOut()V
    .registers 1

    return-void
.end method
