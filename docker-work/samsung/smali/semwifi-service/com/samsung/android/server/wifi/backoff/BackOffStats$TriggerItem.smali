.class Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;
.super Ljava/lang/Object;
.source "BackOffStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/BackOffStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerItem"
.end annotation


# instance fields
.field private count:I

.field private duration:J

.field private final mode:I

.field private startAt:J


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 292
    instance-of v0, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    if-eqz v0, :cond_10

    .line 293
    check-cast p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;

    iget p1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0

    .line 295
    :cond_10
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getCount()I
    .registers 1

    .line 267
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    return p0
.end method

.method getDuration()J
    .registers 5

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    sub-long/2addr v0, v2

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    .line 275
    :goto_10
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public hashCode()I
    .registers 1

    .line 287
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    return p0
.end method

.method isStarted()Z
    .registers 5

    .line 263
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

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

.method merge(Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;)V
    .registers 6

    .line 279
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    iget v1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 280
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    iget v1, p1, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    if-ne v0, v1, :cond_16

    .line 281
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    :cond_16
    return-void
.end method

.method start()V
    .registers 3

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 250
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->count:I

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    :cond_12
    return-void
.end method

.method stop()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->duration:J

    const-wide/16 v0, 0x0

    .line 258
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->startAt:J

    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getCount()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 304
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->mode:I

    .line 305
    invoke-static {v3}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->getTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffStats$TriggerItem;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string v1, " (active)"

    :cond_3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
