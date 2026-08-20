.class public Lcom/samsung/android/server/wifi/backoff/BackOffStats;
.super Ljava/lang/Object;
.source "BackOffStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;,
        Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    }
.end annotation


# instance fields
.field private connectionDuration:J

.field private totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

.field private triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->clearAll()V

    return-void
.end method


# virtual methods
.method clearAll()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 68
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    return-void
.end method

.method getTotalTriggerInfo()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    return-object p0
.end method

.method getTriggerInfoForCurrentNetwork()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    if-nez p0, :cond_9

    .line 73
    new-instance p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    :cond_9
    return-object p0
.end method

.method reportStartTrigger(I)V
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    if-eqz p0, :cond_7

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->start(I)V

    :cond_7
    return-void
.end method

.method reportStopTrigger(I)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    if-eqz p0, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->stop(I)V

    :cond_7
    return-void
.end method

.method startGathering(I)V
    .registers 3

    .line 39
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    return-void
.end method

.method stopGathering()Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    if-eqz v0, :cond_1f

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->stopAll()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;)V

    .line 46
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getLifeTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    return-object v0

    .line 51
    :cond_1f
    new-instance p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;-><init>()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalDuration()J

    move-result-wide v0

    .line 84
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->connectionDuration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_14

    const-wide/16 v4, 0x2710

    mul-long/2addr v4, v0

    .line 85
    div-long/2addr v4, v2

    long-to-int v2, v4

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 87
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackOffStats:\n - lifeTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 88
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getLifeTime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " hours\n - total triggered count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    .line 89
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;->getTotalTriggerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n - total duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "%)\n - total trigger info:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->totalTriggerInfo:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n - current trigger info:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats;->triggerInfoForCurrentNetwork:Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerInfo;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
