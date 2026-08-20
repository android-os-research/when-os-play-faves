.class public final Lokio/PushableTimeout;
.super Lokio/Timeout;
.source "PushableTimeout.java"


# instance fields
.field public originalDeadlineNanoTime:J

.field public originalHasDeadline:Z

.field public originalTimeoutNanos:J

.field public pushed:Lokio/Timeout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public pop()V
    .registers 5

    .line 48
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 50
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_15

    .line 51
    iget-object v0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    iget-wide v1, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v0, v1, v2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_1a

    .line 53
    :cond_15
    iget-object p0, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :goto_1a
    return-void
.end method

.method public push(Lokio/Timeout;)V
    .registers 6

    .line 33
    iput-object p1, p0, Lokio/PushableTimeout;->pushed:Lokio/Timeout;

    .line 34
    invoke-virtual {p1}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, -0x1

    :goto_11
    iput-wide v0, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    .line 36
    invoke-virtual {p1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lokio/PushableTimeout;->originalTimeoutNanos:J

    .line 38
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lokio/Timeout;->minTimeout(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 40
    iget-boolean v0, p0, Lokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 41
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_4b

    .line 42
    :cond_3e
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 43
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_4b
    :goto_4b
    return-void
.end method
