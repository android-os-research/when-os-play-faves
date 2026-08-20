.class public Lcom/samsung/android/server/wifi/SemApeService$Stats;
.super Ljava/lang/Object;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field countOfApeEnabledForNonVoipApp:I

.field countOfApeEnabledForVoipApp:I

.field startedTimeMillis:J

.field totalSecondsOfApeEnabledForNonVoipApp:J

.field totalSecondsOfApeEnabledForVoipApp:J

.field totalSecondsOfBackgroundLimitedForNonVoipApp:J

.field totalSecondsOfBackgroundLimitedForVoipApp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$Stats;)V
    .registers 4

    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    iget v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 1512
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 1513
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 1514
    iget v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 1515
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 1516
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 1517
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    return-void
.end method


# virtual methods
.method public getTotalRunningSeconds()I
    .registers 5

    .line 1529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1521
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 1522
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 1523
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 1524
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 1525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->startedTimeMillis:J

    return-void
.end method
