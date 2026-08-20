.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field public avg:D

.field public numSamples:J

.field public sum2:D

.field public var:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .registers 15

    .line 1008
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    long-to-double v4, v0

    long-to-double p1, p1

    .line 1010
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    sub-double/2addr p1, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v10, v8, v4

    mul-double/2addr v10, p1

    add-double/2addr v6, v10

    .line 1011
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    .line 1012
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    sub-double v10, v4, v8

    div-double v4, v10, v4

    mul-double/2addr v4, p1

    mul-double/2addr v4, p1

    add-double/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    cmp-long p1, v0, v2

    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    move-wide v8, v10

    :goto_25
    div-double/2addr v6, v8

    .line 1014
    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate{numSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", var="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
