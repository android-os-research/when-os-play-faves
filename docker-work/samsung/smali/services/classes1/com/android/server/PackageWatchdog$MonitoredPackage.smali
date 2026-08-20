.class public Lcom/android/server/PackageWatchdog$MonitoredPackage;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitoredPackage"
.end annotation


# instance fields
.field public mDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFailureHistory:Landroid/util/LongArrayQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mHasPassedHealthCheck:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mHealthCheckDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mHealthCheckState:I

.field public final mMitigationCalls:Landroid/util/LongArrayQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailureHistory(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthCheckDurationMs(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthCheckState(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoString(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V
    .registers 9

    .line 1424
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    new-instance p1, Landroid/util/LongArrayQueue;

    invoke-direct {p1}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    const/4 p1, 0x1

    .line 1405
    iput p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1425
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    .line 1426
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1427
    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1428
    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1429
    iput-object p8, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    return-void
.end method


# virtual methods
.method public getHealthCheckStateLocked()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1588
    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return p0
.end method

.method public getMitigationCountLocked()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1486
    :goto_a
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 1487
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->removeFirst()J
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_a

    .line 1492
    :catch_1e
    :cond_1e
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 1579
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortestScheduleDurationMsLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1599
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v0

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1601
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v2

    goto :goto_18

    :cond_13
    const-wide v2, 0x7fffffffffffffffL

    .line 1599
    :goto_18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleElapsedTimeLocked(J)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_23

    .line 1540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot handle non-positive elapsed time for package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageWatchdog"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return p0

    .line 1544
    :cond_23
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1545
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-nez v0, :cond_31

    .line 1549
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1551
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result p0

    return p0
.end method

.method public isEqualTo(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    iget-wide v2, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    iget-boolean v1, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-ne v0, v1, :cond_38

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    iget-wide v2, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    .line 1680
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method public isExpiredLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1610
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isPendingHealthChecksLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1619
    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method public normalizeMitigationCalls()Landroid/util/LongArrayQueue;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1504
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    .line 1505
    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1506
    :goto_10
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {v4}, Landroid/util/LongArrayQueue;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 1507
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    invoke-virtual {v4, v3}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArrayQueue;->addLast(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_25
    return-object v0
.end method

.method public noteMitigationCallLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArrayQueue;->addLast(J)V

    return-void
.end method

.method public onFailureLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1456
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 1457
    :goto_f
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v4}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmTriggerFailureDurationMs(Lcom/android/server/PackageWatchdog;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    .line 1459
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_f

    .line 1461
    :cond_28
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->-$$Nest$fgetmTriggerFailureCount(Lcom/android/server/PackageWatchdog;)I

    move-result v1

    if-lt v0, v1, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_40

    .line 1463
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->clear()V

    :cond_40
    return v0
.end method

.method public setHealthCheckActiveLocked(J)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3b

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-positive health check duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Using total duration "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageWatchdog"

    .line 1520
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1525
    :cond_3b
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 1527
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1529
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result p0

    return p0
.end method

.method public final toPositive(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_7

    goto :goto_c

    :cond_7
    const-wide p1, 0x7fffffffffffffffL

    :goto_c
    return-wide p1
.end method

.method public final toString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_e
    const-string p0, "FAILED"

    return-object p0

    :cond_11
    const-string p0, "PASSED"

    return-object p0

    :cond_14
    const-string p0, "INACTIVE"

    return-object p0

    :cond_17
    const-string p0, "ACTIVE"

    return-object p0
.end method

.method public tryPassHealthCheckLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1569
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    .line 1572
    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1574
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result p0

    return p0
.end method

.method public updateHealthCheckDuration(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1557
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    return-void
.end method

.method public final updateHealthCheckStateLocked()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1632
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1633
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 1635
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1636
    :cond_a
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_19

    goto :goto_2a

    :cond_19
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x1

    .line 1640
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    :cond_26
    const/4 v1, 0x0

    .line 1642
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    :cond_2a
    :goto_2a
    const/4 v1, 0x3

    .line 1638
    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1645
    :goto_2d
    iget v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-eq v0, v1, :cond_65

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated health check state for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    .line 1646
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_65
    iget p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return p0
.end method

.method public writeLocked(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    .line 1436
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1438
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    const-string v4, "duration"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-string/jumbo v4, "health-check-duration"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    const-string/jumbo v3, "passed-health-check"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->normalizeMitigationCalls()Landroid/util/LongArrayQueue;

    move-result-object p0

    .line 1442
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->longArrayQueueToString(Landroid/util/LongArrayQueue;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "mitigation-calls"

    invoke-interface {p1, v0, v2, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1443
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
