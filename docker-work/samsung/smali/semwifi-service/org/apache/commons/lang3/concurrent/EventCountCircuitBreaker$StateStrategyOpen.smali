.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;
.super Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStrategyOpen"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .registers 2

    .line 545
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
    .registers 2

    .line 562
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingInterval()J

    move-result-wide p0

    return-wide p0
.end method

.method public isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .registers 8

    .line 552
    invoke-virtual {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v0

    .line 553
    invoke-virtual {p2}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_18

    .line 554
    invoke-virtual {p2}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getClosingThreshold()I

    move-result p1

    if-ge p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
