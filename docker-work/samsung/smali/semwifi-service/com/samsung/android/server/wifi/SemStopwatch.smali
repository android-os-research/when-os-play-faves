.class public Lcom/samsung/android/server/wifi/SemStopwatch;
.super Ljava/lang/Object;
.source "SemStopwatch.java"


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStopped()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isStarted()Z
    .registers 5

    .line 30
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isStopped()Z
    .registers 5

    .line 34
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public lap()J
    .registers 5

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 72
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    .line 81
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    return-void
.end method

.method public start()Lcom/samsung/android/server/wifi/SemStopwatch;
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    :cond_c
    return-object p0
.end method

.method public stop()J
    .registers 5

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemStopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    .line 60
    :cond_c
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemStopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
