.class public Lcom/android/server/location/gnss/GnssMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;,
        Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;,
        Lcom/android/server/location/gnss/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field public static final CONVERT_MILLI_TO_MICRO:I = 0x3e8

.field public static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8

.field public static final L5_CARRIER_FREQ_RANGE_HIGH_HZ:D = 1.189E9

.field public static final L5_CARRIER_FREQ_RANGE_LOW_HZ:D = 1.164E9

.field public static final TAG:Ljava/lang/String; = "GnssMetrics"

.field public static final VENDOR_SPECIFIC_POWER_MODES_SIZE:I = 0xa


# instance fields
.field public mConstellationTypes:[Z

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

.field public mL5SvStatusReports:J

.field public mL5SvStatusReportsUsedInFix:J

.field public mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mLogStartInElapsedRealtimeMs:J

.field public mNumL5SvStatus:I

.field public mNumL5SvStatusUsedInFix:I

.field public mNumSvStatus:I

.field public mNumSvStatusUsedInFix:I

.field public final mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mStatsManager:Landroid/app/StatsManager;

.field public mSvStatusReports:J

.field public mSvStatusReportsUsedInFix:J

.field public mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGnssNative(Lcom/android/server/location/gnss/GnssMetrics;)Lcom/android/server/location/gnss/hal/GnssNative;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 99
    new-instance p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-direct {p3, p0, p2}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 100
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 101
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 102
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 103
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 104
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    .line 106
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 107
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 108
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 109
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 110
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-direct {p2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-string/jumbo p2, "stats"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mStatsManager:Landroid/app/StatsManager;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->registerGnssStats()V

    return-void
.end method

.method public static isL5Sv(F)Z
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x41d1584ec0000000L    # 1.164E9

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_15

    const-wide v2, 0x41d1b7acd0000000L    # 1.189E9

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .registers 6

    .line 270
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_21

    .line 272
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 273
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 275
    :cond_21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_43

    .line 276
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 277
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 278
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 279
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 281
    :cond_43
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_65

    .line 282
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 283
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 284
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 285
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 287
    :cond_65
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_85

    .line 288
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 289
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 290
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 291
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 293
    :cond_85
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    if-lez v1, :cond_8b

    .line 294
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusProcessed:I

    .line 296
    :cond_8b
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    if-lez v1, :cond_91

    .line 297
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusProcessed:I

    .line 299
    :cond_91
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    if-lez v1, :cond_97

    .line 300
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numSvStatusUsedInFix:I

    .line 302
    :cond_97
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    if-lez v1, :cond_9d

    .line 303
    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5SvStatusUsedInFix:I

    .line 305
    :cond_9d
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_bd

    .line 306
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numL5TopFourAverageCn0Processed:I

    .line 307
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanL5TopFourAverageCn0DbHz:D

    .line 308
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 309
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationL5TopFourAverageCn0DbHz:D

    .line 311
    :cond_bd
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    const-string/jumbo v1, "ro.boot.revision"

    const-string v2, ""

    .line 312
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->hardwareRevision:Ljava/lang/String;

    .line 313
    invoke-static {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    return-object v0
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .registers 10

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS_KPI_START"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "  KPI logging start time: "

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, "\n"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  KPI logging end time: "

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Number of location reports: "

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 333
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_5a

    const-string v2, "  Percentage location failure: "

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 336
    invoke-virtual {v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 335
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    const-string v2, "  Number of TTFF reports: "

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 339
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_95

    const-string v2, "  TTFF mean (sec): "

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  TTFF standard deviation (sec): "

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 344
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 343
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_95
    const-string v2, "  Number of position accuracy reports: "

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 347
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_d0

    const-string v2, "  Position accuracy mean (m): "

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 350
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    .line 349
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Position accuracy standard deviation (m): "

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 352
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 351
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    const-string v2, "  Number of CN0 reports: "

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 355
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_10b

    const-string v2, "  Top 4 Avg CN0 mean (dB-Hz): "

    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 358
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    .line 357
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 360
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 359
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10b
    const-string v2, "  Total number of sv status messages processed: "

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of L5 sv status messages processed: "

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of sv status messages processed, where sv is used in fix: "

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total number of L5 sv status messages processed, where sv is used in fix: "

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Number of L5 CN0 reports: "

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 373
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_17a

    const-string v2, "  L5 Top 4 Avg CN0 mean (dB-Hz): "

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 376
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    .line 375
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  L5 Top 4 Avg CN0 standard deviation (dB-Hz): "

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 378
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 377
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17a
    const-string v2, "  Used-in-fix constellation types: "

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    .line 381
    :goto_181
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_199

    .line 382
    aget-boolean v4, v4, v3

    if-eqz v4, :cond_196

    .line 383
    invoke-static {v3}, Landroid/location/GnssStatus;->constellationTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_196
    add-int/lit8 v3, v3, 0x1

    goto :goto_181

    .line 386
    :cond_199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GNSS_KPI_END"

    .line 387
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    if-eqz p0, :cond_209

    const-string v3, "Power Metrics"

    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery (min): "

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v5

    .line 391
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v3

    if-eqz v3, :cond_1f3

    .line 395
    array-length v4, v3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1f3

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 > 20.0 dB-Hz (min): "

    .line 396
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v7, v3, v4

    long-to-double v7, v7

    div-double/2addr v7, v5

    .line 398
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 <= 20.0 dB-Hz (min): "

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v3, v2

    long-to-double v2, v2

    div-double/2addr v2, v5

    .line 402
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f3
    const-string v2, "  Energy consumed while on battery (mAh): "

    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 405
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_209
    const-string p0, "Hardware Version: "

    .line 409
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ro.boot.revision"

    const-string v2, ""

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logCn0(Landroid/location/GnssStatus;)V
    .registers 8

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMetrics;->logCn0L5(Landroid/location/GnssStatus;)V

    .line 165
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 166
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    return-void

    .line 170
    :cond_10
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 171
    :goto_17
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 172
    invoke-virtual {p1, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 175
    :cond_26
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    .line 176
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {p1, v1}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([F)V

    const/4 p1, 0x4

    if-ge v0, p1, :cond_32

    return-void

    :cond_32
    add-int/lit8 p1, v0, -0x4

    .line 180
    aget v2, v1, p1

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_59

    :goto_3d
    if-ge p1, v0, :cond_46

    .line 183
    aget v2, v1, p1

    float-to-double v2, v2

    add-double/2addr v4, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    :cond_46
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v0

    .line 186
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p1, v4, v5}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 188
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :cond_59
    return-void
.end method

.method public final logCn0L5(Landroid/location/GnssStatus;)V
    .registers 8

    .line 228
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 232
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 233
    :goto_11
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 234
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v2

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 235
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 238
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_37

    return-void

    .line 242
    :cond_37
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_7d

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6a

    .line 246
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    add-double/2addr v4, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    :cond_6a
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v0

    .line 249
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p1, v4, v5}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 251
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    :cond_7d
    return-void
.end method

.method public logConstellationType(I)V
    .registers 3

    .line 259
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    array-length v0, p0

    if-lt p1, v0, :cond_21

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Constellation type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GnssMetrics"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v0, 0x1

    .line 263
    aput-boolean v0, p0, p1

    return-void
.end method

.method public logMissedReports(II)V
    .registers 6

    const/16 v0, 0x3e8

    .line 133
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1d

    const/4 p1, 0x0

    :goto_c
    if-ge p1, p2, :cond_1d

    .line 137
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 138
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1d
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 156
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .registers 4

    if-nez p1, :cond_f

    .line 120
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 121
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    return-void

    .line 124
    :cond_f
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 125
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logSvStatus(Landroid/location/GnssStatus;)V
    .registers 9

    const/4 v0, 0x0

    .line 203
    :goto_1
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 204
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 205
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 206
    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 207
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssMetrics;->isL5Sv(F)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 209
    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 210
    iget-wide v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 212
    :cond_2f
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 213
    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 214
    iget-wide v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    if-eqz v1, :cond_4d

    .line 216
    iget v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 217
    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_50
    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .registers 7

    .line 147
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double v3, v1, v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    .line 148
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public final registerGnssStats()V
    .registers 6

    .line 590
    new-instance v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/location/gnss/GnssMetrics;)V

    .line 591
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssMetrics;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v3, 0x275a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 595
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v2, 0x2775

    invoke-virtual {p0, v2, v4, v1, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final reset()V
    .registers 3

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    .line 416
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 417
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 418
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 419
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 420
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->resetConstellationTypes()V

    .line 421
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 423
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 424
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 425
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    return-void
.end method

.method public resetConstellationTypes()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 430
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    return-void
.end method
