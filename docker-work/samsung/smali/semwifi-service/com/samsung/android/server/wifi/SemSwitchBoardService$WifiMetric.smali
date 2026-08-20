.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;
.super Ljava/lang/Object;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMetric"
.end annotation


# instance fields
.field private calculatedTxBad:J

.field private calculatedTxBadRate:D

.field private calculatedTxFrames:J

.field private calculatedTxRetries:J

.field private calculatedTxRetriesRate:D

.field private rssi:I

.field private totalRxBeacon:I

.field private txBad:J

.field private txFrames:J

.field private txRetries:J

.field private txSuccess:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcalculatedTxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxBadRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcalculatedTxRetriesRate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettotalRxBeacon(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettxBad(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxFrames(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettxRetries(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mreset(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->reset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->update(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->update(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->valid()Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;-><init>()V

    return-void
.end method

.method private reset()V
    .registers 3

    const/16 v0, -0x7f

    .line 423
    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    const-wide/16 v0, 0x0

    .line 424
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 425
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 426
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    .line 427
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 429
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 430
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 431
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    const-wide/16 v0, 0x0

    .line 432
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    .line 433
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    return-void
.end method

.method private update(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .registers 8

    .line 407
    iget v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 408
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 409
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 410
    iget-wide v4, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    add-long/2addr v0, v2

    .line 411
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 413
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 414
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 415
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    .line 416
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    .line 417
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 419
    iget p1, p1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    return-void
.end method

.method private update(Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V
    .registers 15

    .line 389
    iget v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->rssi_mgmt:I

    iput v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    .line 390
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_be:J

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->txmpdu_vo:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txSuccess:J

    .line 391
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->lostmpdu_vo:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    .line 392
    iget-wide v4, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_be:J

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_bk:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vi:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->retries_vo:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    add-long/2addr v0, v2

    .line 393
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    .line 395
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txFrames:J

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxFrames:J

    .line 396
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txBad:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBad:J

    .line 397
    iget-wide v6, p2, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->txRetries:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetries:J

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    const-wide/16 v8, 0x0

    if-lez p2, :cond_49

    long-to-double v2, v2

    long-to-double v10, v0

    div-double/2addr v2, v10

    goto :goto_4a

    :cond_49
    move-wide v2, v8

    .line 399
    :goto_4a
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxBadRate:D

    cmp-long p2, v0, v6

    if-lez p2, :cond_54

    long-to-double v2, v4

    long-to-double v0, v0

    div-double v8, v2, v0

    .line 401
    :cond_54
    iput-wide v8, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->calculatedTxRetriesRate:D

    .line 403
    iget p1, p1, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;->beacon_rx:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->totalRxBeacon:I

    return-void
.end method

.method private valid()Z
    .registers 2

    .line 437
    iget p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->rssi:I

    const/16 v0, -0x7f

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
