.class public final Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopwatchLogger"
.end annotation


# instance fields
.field public mStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->resetStartTime()V

    return-void
.end method

.method public static start()Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;
    .registers 1

    .line 451
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 481
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 469
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public elapsedTimeMillis()J
    .registers 5

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final formatTookTime(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    .line 490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 485
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ik(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 473
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->ik(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetStartTime()V
    .registers 3

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 477
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public vk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 465
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->elapsedTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->formatTookTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->vk(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
