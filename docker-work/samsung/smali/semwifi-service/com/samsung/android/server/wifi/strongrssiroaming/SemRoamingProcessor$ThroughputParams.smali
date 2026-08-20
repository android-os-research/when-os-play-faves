.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;
.super Ljava/lang/Object;
.source "SemRoamingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThroughputParams"
.end annotation


# instance fields
.field channelUtilization:I

.field maxNumberSpatialStreamsFromHeCap:I

.field maxNumberSpatialStreamsFromHtCap:I

.field maxNumberSpatialStreamsFromVhtCap:I


# direct methods
.method static bridge synthetic -$$Nest$mgetChannelUtilization(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->getChannelUtilization()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->reset()V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 391
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->channelUtilization:I

    const/4 v0, 0x1

    .line 392
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 393
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 394
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    return-void
.end method

.method private getChannelUtilization()I
    .registers 1

    .line 409
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->channelUtilization:I

    return p0
.end method

.method private getMaxNumberSpatialStreams()I
    .registers 3

    .line 404
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 405
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 404
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private reset()V
    .registers 2

    const/4 v0, -0x1

    .line 397
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->channelUtilization:I

    const/4 v0, 0x1

    .line 398
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 399
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 400
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    return-void
.end method
