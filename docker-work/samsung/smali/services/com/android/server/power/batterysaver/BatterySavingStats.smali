.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final STATE_NOT_INITIALIZED:I = -0x1

.field public static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field public mAdaptiveBatterySaverEnabledCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatterySaverEnabledCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCurrentState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastAdaptiveBatterySaverDisabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastAdaptiveBatterySaverEnabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastBatterySaverDisabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastBatterySaverEnabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mStats:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    const-wide/16 v1, 0x0

    .line 174
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 177
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 180
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 183
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 186
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 192
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 193
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3d

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;->fromIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const-string p0, "NotInitialized"

    return-object p0
.end method

.method public static statesToIndex(IIII)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 p0, p0, 0x3

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x1

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 16

    const-string v0, "Battery saving stats:"

    .line 395
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 400
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v3

    .line 401
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v6, "Battery Saver is currently: "

    .line 403
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v7, 0x1

    if-eq v6, v7, :cond_35

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2f

    goto :goto_40

    :cond_2f
    const-string v6, "ADAPTIVE"

    .line 412
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    :cond_35
    const-string v6, "ON"

    .line 409
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    :cond_3b
    const-string v6, "OFF"

    .line 406
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    :goto_40
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6e

    const-string v6, "Last ON time: "

    .line 418
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 419
    new-instance v6, Ljava/util/Date;

    sub-long v10, v1, v3

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    .line 420
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 422
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 425
    :cond_6e
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_97

    const-string v6, "Last OFF time: "

    .line 426
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 427
    new-instance v6, Ljava/util/Date;

    sub-long v10, v1, v3

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    .line 428
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 430
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_97
    const-string v6, "Times full enabled: "

    .line 433
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 436
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_ca

    const-string v6, "Last ADAPTIVE ON time: "

    .line 437
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 438
    new-instance v6, Ljava/util/Date;

    sub-long v10, v1, v3

    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    add-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    .line 440
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 442
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 444
    :cond_ca
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_f2

    const-string v6, "Last ADAPTIVE OFF time: "

    .line 445
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 446
    new-instance v6, Ljava/util/Date;

    sub-long/2addr v1, v3

    iget-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    add-long/2addr v1, v7

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    .line 448
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 450
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_f2
    const-string v1, "Times adaptive enabled: "

    .line 452
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 455
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Drain stats:"

    .line 458
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "                   Battery saver OFF                          ON"

    .line 460
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x0

    const-string v7, "NonDoze"

    move-object v2, p0

    move-object v3, p1

    .line 461
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x1

    const-string v11, "   Intr"

    const/4 v12, 0x0

    const-string v13, "       "

    move-object v8, p0

    move-object v9, p1

    .line 463
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "NonIntr"

    const/4 v5, 0x2

    const-string v6, "Deep   "

    move-object v1, p0

    move-object v2, p1

    .line 466
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v9, 0x1

    const-string v10, "   Intr"

    const/4 v11, 0x2

    const-string v12, "       "

    move-object v7, p0

    move-object v8, p1

    .line 468
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "NonIntr"

    const/4 v5, 0x1

    const-string v6, "Light  "

    move-object v1, p0

    move-object v2, p1

    .line 471
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v9, 0x1

    const-string v10, "   Intr"

    const/4 v11, 0x1

    const-string v12, "       "

    move-object v7, p0

    move-object v8, p1

    .line 473
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 475
    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_b .. :try_end_14f} :catchall_153

    .line 476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_153
    move-exception p0

    .line 475
    :try_start_154
    monitor-exit v0
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw p0
.end method

.method public final dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V
    .registers 9

    .line 482
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p5, " "

    .line 483
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ": "

    .line 485
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 487
    invoke-virtual {p0, p3, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p5

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0, v0, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p0

    const/16 p2, 0x8

    new-array p2, p2, [Ljava/lang/Object;

    .line 493
    invoke-virtual {p5}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    iget p3, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p3, p3, 0x3e8

    .line 494
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    iget p3, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    .line 496
    invoke-virtual {p5}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    .line 497
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    iget p3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p3, p3, 0x3e8

    .line 498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    iget p3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    .line 500
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide p3

    div-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p3, 0x7

    aput-object p0, p2, p3

    const-string p0, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    .line 492
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final endLastStateLocked(JII)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 337
    iget v5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v5, :cond_d

    return-void

    .line 340
    :cond_d
    invoke-virtual {v0, v5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v5

    .line 342
    iput v3, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 343
    iput v4, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 344
    iput-wide v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 346
    iget-wide v6, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long v11, v1, v6

    .line 347
    iget v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    sub-int v13, v1, v3

    .line 348
    iget v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    sub-int v14, v1, v4

    .line 350
    iget-wide v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v1, v11

    iput-wide v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 351
    iget v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v1, v13

    iput v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 352
    iget v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v1, v14

    iput v1, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 363
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 364
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 365
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v9

    iget v0, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 366
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v10

    iget-wide v0, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v2, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v3, v5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    move-wide v15, v0

    move/from16 v17, v2

    move/from16 v18, v3

    .line 363
    invoke-static/range {v8 .. v18}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    return-void
.end method

.method public final getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    .line 198
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_17

    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_17
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    if-nez v1, :cond_17

    .line 242
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    .line 243
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .registers 5

    .line 254
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p0

    return-object p0
.end method

.method public injectBatteryLevel()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_8
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result p0

    return p0
.end method

.method public injectBatteryPercent()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_8
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public injectCurrentTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final startNewStateLocked(IJII)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 381
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez p1, :cond_5

    return-void

    .line 387
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p0

    .line 388
    iput p4, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 389
    iput p5, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 390
    iput-wide p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    const-wide/16 p1, 0x0

    .line 391
    iput-wide p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    return-void
.end method

.method public transitionState(IIII)V
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 289
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final transitionStateLocked(I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 294
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v3

    .line 298
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v5

    .line 299
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v6

    .line 301
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    const/4 v1, 0x0

    if-gez v0, :cond_18

    move v0, v1

    goto :goto_1c

    .line 302
    :cond_18
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v0

    :goto_1c
    if-gez p1, :cond_1f

    goto :goto_23

    .line 304
    :cond_1f
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    :goto_23
    if-eq v0, v1, :cond_4d

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    const/4 v7, 0x2

    if-eq v1, v2, :cond_3a

    if-eq v1, v7, :cond_2e

    goto :goto_4d

    .line 322
    :cond_2e
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 323
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    if-ne v0, v2, :cond_4d

    .line 325
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4d

    .line 308
    :cond_3a
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 309
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    if-ne v0, v7, :cond_4d

    .line 311
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    goto :goto_4d

    :cond_46
    if-ne v0, v2, :cond_4b

    .line 316
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_4d

    .line 318
    :cond_4b
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 331
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    move-object v1, p0

    move v2, p1

    .line 332
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    return-void
.end method
