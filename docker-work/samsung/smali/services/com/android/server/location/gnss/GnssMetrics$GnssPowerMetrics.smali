.class public Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssPowerMetrics"
.end annotation


# static fields
.field public static final POOR_TOP_FOUR_AVG_CN0_THRESHOLD_DB_HZ:D = 20.0

.field public static final REPORTING_THRESHOLD_DB_HZ:D = 1.0


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mLastAverageCn0:D

.field public mLastSignalLevel:I

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .registers 3

    .line 505
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-wide/high16 p1, -0x3fa7000000000000L    # -100.0

    .line 510
    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    const/4 p1, -0x1

    .line 511
    iput p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    return-void
.end method


# virtual methods
.method public buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .registers 6

    .line 520
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    .line 521
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 523
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 525
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 526
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object p0

    .line 527
    array-length v1, p0

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 528
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    return-object v0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 2

    .line 540
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    const-string v0, "GnssMetrics"

    .line 542
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSignalLevel(D)I
    .registers 5

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public reportSignalQuality([F)V
    .registers 9

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_20

    .line 555
    array-length v2, p1

    if-lez v2, :cond_20

    const/4 v2, 0x0

    .line 556
    array-length v3, p1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_f
    array-length v3, p1

    if-ge v2, v3, :cond_19

    .line 558
    aget v3, p1, v2

    float-to-double v5, v3

    add-double/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 560
    :cond_19
    array-length p1, p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 562
    :cond_20
    iget-wide v2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2f

    return-void

    .line 565
    :cond_2f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->getSignalLevel(D)I

    move-result p1

    .line 566
    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x45

    .line 567
    invoke-static {v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 568
    iput p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 571
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    .line 572
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_4c

    :catch_46
    move-exception p0

    const-string p1, "GnssMetrics"

    .line 574
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void
.end method
