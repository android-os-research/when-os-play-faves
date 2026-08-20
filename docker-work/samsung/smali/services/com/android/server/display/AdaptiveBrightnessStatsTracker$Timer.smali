.class Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timer"
.end annotation


# instance fields
.field public final clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

.field public paused:Z

.field public startTimeMillis:J

.field public started:Z

.field public totalDurationSec:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;)V
    .registers 2

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    return-void
.end method


# virtual methods
.method public isPaused()Z
    .registers 1

    .line 512
    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 508
    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    return p0
.end method

.method public pause()V
    .registers 6

    .line 488
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-nez v0, :cond_21

    .line 489
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    invoke-interface {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    :cond_21
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    .line 470
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    return-void
.end method

.method public resume()V
    .registers 3

    .line 498
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-eqz v0, :cond_13

    .line 499
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    :cond_13
    return-void
.end method

.method public start()V
    .registers 3

    .line 478
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-nez v0, :cond_f

    .line 479
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    :cond_f
    return-void
.end method

.method public totalDurationSec()F
    .registers 6

    .line 516
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_29

    .line 517
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-nez v0, :cond_26

    .line 518
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    invoke-interface {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    .line 519
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 524
    :cond_26
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method
