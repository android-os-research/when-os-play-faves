.class public Lcom/android/internal/telephony/SlidingWindowEventCounter;
.super Ljava/lang/Object;
.source "SlidingWindowEventCounter.java"


# instance fields
.field private final blacklist mNumOccurrences:I

.field private final blacklist mTimestampQueueMillis:Landroid/util/LongArrayQueue;

.field private final blacklist mWindowSizeMillis:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    if-le p3, v0, :cond_18

    .line 45
    iput-wide p1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mWindowSizeMillis:J

    .line 46
    iput p3, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I

    .line 47
    new-instance p1, Landroid/util/LongArrayQueue;

    invoke-direct {p1, p3}, Landroid/util/LongArrayQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    return-void

    .line 42
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numOccurrences must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "windowSizeMillis must be greater or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized blacklist addOccurrence()Z
    .registers 3

    monitor-enter p0

    .line 57
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->addOccurrence(J)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist addOccurrence(J)Z
    .registers 4

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 69
    iget-object p1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I

    if-le p1, p2, :cond_15

    .line 70
    iget-object p1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 72
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/SlidingWindowEventCounter;->isInWindow()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getFrequencyString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget v1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mWindowSizeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%d times within %d ms."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist getNumOccurrences()I
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist getQueuedNumOccurrences()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist getWindowSizeMillis()J
    .registers 3

    monitor-enter p0

    .line 93
    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mWindowSizeMillis:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isInWindow()Z
    .registers 5

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    .line 80
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mWindowSizeMillis:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    .line 81
    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekLast()J

    move-result-wide v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 79
    :goto_21
    monitor-exit p0

    return v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlidingWindowEventCounter=[windowSizeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mWindowSizeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numOccurrences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mNumOccurrences:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestampQueueMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SlidingWindowEventCounter;->mTimestampQueueMillis:Landroid/util/LongArrayQueue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
