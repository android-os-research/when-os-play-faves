.class public Lcom/android/server/location/gnss/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statistics"
.end annotation


# instance fields
.field public mCount:I

.field public mLongSum:J

.field public mSum:D

.field public mSumSquare:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(D)V
    .registers 7

    monitor-enter p0

    .line 454
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    .line 455
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    .line 456
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    .line 457
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J

    long-to-double v0, v0

    add-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 458
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    .line 462
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLongSum()J
    .registers 3

    monitor-enter p0

    .line 483
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .registers 5

    monitor-enter p0

    .line 467
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    int-to-double v2, v2

    div-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .registers 8

    monitor-enter p0

    .line 472
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    int-to-double v3, v2

    div-double/2addr v0, v3

    mul-double/2addr v0, v0

    .line 474
    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    int-to-double v5, v2

    div-double/2addr v3, v5

    cmpl-double v2, v3, v0

    if-lez v2, :cond_17

    sub-double/2addr v3, v0

    .line 476
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    monitor-exit p0

    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    .line 478
    monitor-exit p0

    return-wide v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 446
    :try_start_2
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    const-wide/16 v0, 0x0

    .line 447
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    .line 448
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    const-wide/16 v0, 0x0

    .line 449
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 450
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
