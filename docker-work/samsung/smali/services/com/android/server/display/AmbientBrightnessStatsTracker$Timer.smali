.class Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timer"
.end annotation


# instance fields
.field public final clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

.field public startTimeMillis:J

.field public started:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;)V
    .registers 2

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 1

    .line 329
    iget-boolean p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-nez v0, :cond_f

    .line 323
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    :cond_f
    return-void
.end method

.method public totalDurationSec()F
    .registers 5

    .line 333
    iget-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_16

    .line 334
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
