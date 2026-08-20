.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFavoriteNetworkState"
.end annotation


# static fields
.field private static final MAX_AVERAGE_TIME:J = 0x1b7740L

.field private static final MAX_COUNT_OF_ELAPSED_NUMBER:I = 0x40

.field private static final THRESHOLD_RATIO_FOR_AVERAGE_TIME_CALCULATION:I = 0xc8


# instance fields
.field private mAheadTimeForEstimatedArrivalTime:J

.field private mAverageTime:J

.field private mConfigKey:Ljava/lang/String;

.field private mEstimatedTimeOfArrival:J

.field private mForceAverageTime:J

.field private mForceTotalNumberOfAverageTime:I

.field mHiddenNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstScanAfterScreenOn:Z

.field private mNextIntervalMs:J

.field mPnoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevScanInterval:J

.field private mScanCount:I

.field private mStartAt:J

.field private mTotalNumberOfAverageTime:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method public static synthetic $r8$lambda$GNL7fR9cue7C7-EmrrJ8FM_IcVU(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->lambda$setupPnoTargetNetworks$0(Ljava/util/List;Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAheadTimeForEstimatedArrivalTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEstimatedTimeOfArrival(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNextIntervalMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mNextIntervalMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$msetForceAverageTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setForceAverageTime(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetForceTotalNumberOfAverage(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setForceTotalNumberOfAverage(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1279
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, 0x1

    .line 1292
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 1295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    .line 1296
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    return-void
.end method

.method private calculateAverageTime(J)V
    .registers 10

    .line 1517
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    int-to-long v3, v2

    mul-long/2addr v3, v0

    add-long/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    int-to-long p1, v2

    div-long/2addr v3, p1

    sub-long p1, v3, v0

    const-wide/32 v5, 0xea60

    cmp-long p1, p1, v5

    if-lez p1, :cond_16

    add-long v3, v0, v5

    :cond_16
    const-wide/32 p1, 0x1b7740

    cmp-long v0, v3, p1

    if-lez v0, :cond_1e

    move-wide v3, p1

    .line 1524
    :cond_1e
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    return-void
.end method

.method private calculateElapsedTime()J
    .registers 7

    .line 1528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    sub-long/2addr v0, v2

    .line 1529
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1d

    cmp-long p0, v0, v2

    if-lez p0, :cond_1d

    move-wide v0, v2

    :cond_1d
    return-wide v0
.end method

.method private calculateEstimatedTimeOfArrival()J
    .registers 5

    .line 1488
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getInRangeConfigKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sem_auto_wifi_average_time_to_favorite_ap"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1493
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1495
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    .line 1496
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1497
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    const/4 v1, 0x1

    .line 1498
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v0

    .line 1502
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1505
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1506
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceAverageTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 1507
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceTotalNumberOfAverageTime:I

    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 1510
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "[MANUAL_MODE] "

    goto :goto_6e

    :cond_6c
    const-string v1, ""

    :goto_6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAverageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalNumberOfAverageTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private calculateTotalNumberOfAverage()V
    .registers 3

    .line 1537
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_a

    const/16 v0, 0x3f

    .line 1538
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    .line 1540
    :cond_a
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    return-void
.end method

.method private getInRangeConfigKey()Ljava/lang/String;
    .registers 4

    .line 1544
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1545
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextIntervalMs()J
    .registers 11

    .line 1462
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1463
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    const-wide/16 v0, 0x1f40

    return-wide v0

    .line 1467
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    .line 1468
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 1470
    :goto_16
    sget-object p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mPeriodicScanIntervals:[J

    array-length v0, p0

    const-wide/32 v6, 0x1f400

    if-ge v1, v0, :cond_30

    .line 1471
    aget-wide v8, p0, v1

    add-long/2addr v4, v8

    cmp-long p0, v2, v4

    if-gez p0, :cond_2d

    sub-long/2addr v4, v2

    cmp-long p0, v4, v6

    if-lez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move-wide v6, v4

    :goto_2c
    return-wide v6

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_30
    return-wide v6
.end method

.method private initAheadTimeForEstimatedArrivalTime()V
    .registers 6

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiAheadTimeForEstimatedArrivalTime()I

    move-result v0

    if-nez v0, :cond_10

    const-wide/32 v1, 0xea60

    goto :goto_14

    :cond_10
    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1363
    :goto_14
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aheadTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAheadTimeForEstimatedArrivalTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAheadTimeForEstimatedArrivalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoWifiController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$setupPnoTargetNetworks$0(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .registers 2

    .line 1403
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setForceAverageTime(J)V
    .registers 3

    .line 1571
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceAverageTime:J

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    return-void
.end method

.method private setForceTotalNumberOfAverage(I)V
    .registers 2

    .line 1575
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mForceTotalNumberOfAverageTime:I

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    return-void
.end method

.method private setupHiddenNetworks()V
    .registers 6

    .line 1373
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1376
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_15

    .line 1379
    :cond_28
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1380
    iget-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_15

    .line 1381
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v4, v2}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1384
    :cond_45
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden network size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoWifiController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method private setupPnoTargetNetworks()V
    .registers 9

    .line 1390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v0

    .line 1392
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1393
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1394
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_1a

    .line 1397
    :cond_2d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_1a

    .line 1401
    :cond_3a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    iget-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1403
    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1404
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 1405
    :goto_58
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6d

    .line 1406
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 1408
    :cond_6d
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->createPnoNetwork(Landroid/net/wifi/WifiConfiguration;[I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v3

    .line 1409
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    goto :goto_1a

    .line 1412
    :cond_78
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_81
    return-void
.end method

.method private startPeriodicScan()V
    .registers 9

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan()V

    goto :goto_1d

    .line 1451
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mHiddenNetworks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan(Ljava/util/List;)V

    .line 1453
    :goto_1d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getNextIntervalMs()J

    move-result-wide v0

    .line 1454
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mNextIntervalMs:J

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextIntervalMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoWifiController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x0

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessageDelayed(IIIJ)V

    .line 1458
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    return-void
.end method

.method private startPnoScan()V
    .registers 2

    .line 1438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPnoList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startDisconnectedPnoScan(Ljava/util/List;)V

    return-void
.end method

.method private startScan(Z)V
    .registers 2

    .line 1418
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    if-eqz p1, :cond_c

    .line 1420
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setupHiddenNetworks()V

    .line 1421
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPeriodicScan()V

    goto :goto_12

    .line 1423
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->setupPnoTargetNetworks()V

    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPnoScan()V

    :goto_12
    return-void
.end method

.method private stopPeriodicScan()V
    .registers 3

    .line 1442
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v1, 0x9

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$400(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 1443
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateEstimatedTimeOfArrival()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    const-wide/16 v0, 0x0

    .line 1444
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mPrevScanInterval:J

    return-void
.end method

.method private stopPnoScan()V
    .registers 1

    .line 1434
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->stopPnoScan()V

    return-void
.end method

.method private stopScan()V
    .registers 1

    .line 1429
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopPeriodicScan()V

    .line 1430
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopPnoScan()V

    return-void
.end method

.method private updateAverageTime()V
    .registers 5

    .line 1553
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateElapsedTime()J

    move-result-wide v0

    .line 1554
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateAverageTime(J)V

    .line 1555
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateTotalNumberOfAverage()V

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAverageTime - currentElapsedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mAverageTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mTotalNumberOfAverageTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1562
    :try_start_51
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1563
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1564
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "sem_auto_wifi_average_time_to_favorite_ap"

    invoke-virtual {v1, p0, v2, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p0

    .line 1566
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_70
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    const/4 v0, 0x0

    .line 1301
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    const-wide/16 v1, 0x0

    .line 1302
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    .line 1303
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    const/4 v0, 0x1

    .line 1304
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 1305
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->initAheadTimeForEstimatedArrivalTime()V

    .line 1306
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->calculateEstimatedTimeOfArrival()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEstimatedTimeOfArrival="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mEstimatedTimeOfArrival:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    return-void
.end method

.method public exit()V
    .registers 1

    .line 1357
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    .line 1358
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->unregisterListener()V

    return-void
.end method

.method public getBigDataString()Ljava/lang/String;
    .registers 6

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mStartAt:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugLog()Ljava/lang/String;
    .registers 4

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Average Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mAverageTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n - Total Number Of Average Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mTotalNumberOfAverageTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1315
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_62

    const/16 v1, 0x9

    if-eq v0, v1, :cond_59

    const/16 v1, 0x69

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4e

    packed-switch v0, :pswitch_data_7a

    return v3

    .line 1326
    :pswitch_17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1327
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1329
    :cond_2c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckAndEnableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 1330
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->updateAverageTime()V

    .line 1331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    goto :goto_78

    .line 1335
    :pswitch_3d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_42

    move v3, v2

    :cond_42
    if-eqz v3, :cond_78

    .line 1337
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_78

    .line 1321
    :cond_4e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_53

    move v3, v2

    .line 1322
    :cond_53
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mIsFirstScanAfterScreenOn:Z

    .line 1323
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    goto :goto_78

    .line 1317
    :cond_59
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->mScanCount:I

    .line 1318
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startPeriodicScan()V

    goto :goto_78

    .line 1345
    :cond_62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_78

    .line 1341
    :cond_6c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->stopScan()V

    .line 1342
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->startScan(Z)V

    :cond_78
    :goto_78
    :pswitch_78
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x64
        :pswitch_3d
        :pswitch_17
        :pswitch_78
    .end packed-switch
.end method
