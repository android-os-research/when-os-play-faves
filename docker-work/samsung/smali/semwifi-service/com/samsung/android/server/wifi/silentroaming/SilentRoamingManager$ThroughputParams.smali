.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThroughputParams"
.end annotation


# instance fields
.field capacity:I

.field channelUtilization:I

.field maxNumberSpatialStreamsFromHeCap:I

.field maxNumberSpatialStreamsFromHtCap:I

.field maxNumberSpatialStreamsFromVhtCap:I

.field stationCount:I


# direct methods
.method static bridge synthetic -$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 2422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2423
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 2424
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    .line 2425
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->capacity:I

    const/4 v0, 0x1

    .line 2426
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 2427
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 2428
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    return-void
.end method

.method private getChannelUtilization()I
    .registers 1

    .line 2446
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    return p0
.end method

.method private getMaxNumberSpatialStreams()I
    .registers 3

    .line 2441
    iget v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    iget v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 2442
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2441
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private reset()V
    .registers 2

    const/4 v0, -0x1

    .line 2431
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->stationCount:I

    .line 2433
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->channelUtilization:I

    const/4 v0, 0x1

    .line 2435
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 2436
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 2437
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    return-void
.end method
