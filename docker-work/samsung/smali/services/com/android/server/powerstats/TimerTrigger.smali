.class public final Lcom/android/server/powerstats/TimerTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "TimerTrigger.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_PERIOD_MS_HIGH_FREQUENCY:J = 0x1d4c0L

.field public static final LOG_PERIOD_MS_LOW_FREQUENCY:J = 0x36ee80L

.field public static final TAG:Ljava/lang/String; = "TimerTrigger"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mLogDataHighFrequency:Ljava/lang/Runnable;

.field public mLogDataLowFrequency:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogDataHighFrequency(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogDataLowFrequency(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 37
    new-instance p1, Lcom/android/server/powerstats/TimerTrigger$1;

    invoke-direct {p1, p0}, Lcom/android/server/powerstats/TimerTrigger$1;-><init>(Lcom/android/server/powerstats/TimerTrigger;)V

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    .line 48
    new-instance p1, Lcom/android/server/powerstats/TimerTrigger$2;

    invoke-direct {p1, p0}, Lcom/android/server/powerstats/TimerTrigger$2;-><init>(Lcom/android/server/powerstats/TimerTrigger;)V

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    .line 62
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_25

    .line 65
    iget-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 66
    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_25
    return-void
.end method
