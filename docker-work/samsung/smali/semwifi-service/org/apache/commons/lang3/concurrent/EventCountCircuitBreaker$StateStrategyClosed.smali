.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;
.super Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStrategyClosed"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 522
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .registers 2

    .line 522
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
    .registers 2

    .line 538
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getOpeningInterval()J

    move-result-wide p0

    return-wide p0
.end method

.method public isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .registers 4

    .line 530
    invoke-virtual {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getOpeningThreshold()I

    move-result p1

    if-le p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
