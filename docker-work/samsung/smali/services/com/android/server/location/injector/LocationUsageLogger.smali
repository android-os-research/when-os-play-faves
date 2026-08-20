.class public Lcom/android/server/location/injector/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# static fields
.field public static final API_USAGE_LOG_HOURLY_CAP:I = 0x3c

.field public static final ONE_HOUR_IN_MILLIS:I = 0x36ee80

.field public static final ONE_MINUTE_IN_MILLIS:I = 0xea60

.field public static final ONE_SEC_IN_MILLIS:I = 0x3e8


# instance fields
.field public mApiUsageLogHourlyCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastApiUsageLogHour:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method public static bucketizeDistance(F)I
    .registers 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    cmpl-float v0, p0, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_13

    const/4 p0, 0x2

    return p0

    :cond_13
    const/4 p0, 0x3

    return p0
.end method

.method public static bucketizeExpireIn(J)I
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 p0, 0x6

    return p0

    :cond_b
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    const/4 p0, 0x2

    return p0

    :cond_1c
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_25

    const/4 p0, 0x3

    return p0

    :cond_25
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_2e

    const/4 p0, 0x4

    return p0

    :cond_2e
    const/4 p0, 0x5

    return p0
.end method

.method public static bucketizeInterval(J)I
    .registers 4

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    const/4 p0, 0x2

    return p0

    :cond_10
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    const/4 p0, 0x3

    return p0

    :cond_19
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    const/4 p0, 0x4

    return p0

    :cond_22
    const-wide/32 v0, 0x36ee80

    cmp-long p0, p0, v0

    if-gez p0, :cond_2b

    const/4 p0, 0x5

    return p0

    :cond_2b
    const/4 p0, 0x6

    return p0
.end method

.method public static bucketizeProvider(Ljava/lang/String;)I
    .registers 2

    const-string/jumbo v0, "network"

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-string/jumbo v0, "gps"

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    const-string/jumbo v0, "passive"

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x3

    return p0

    :cond_21
    const-string v0, "fused"

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x4

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static bucketizeRadius(F)I
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    const/4 p0, 0x2

    return p0

    :cond_17
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1f

    const/4 p0, 0x3

    return p0

    :cond_1f
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_27

    const/4 p0, 0x4

    return p0

    :cond_27
    const v0, 0x461c4000    # 10000.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_30

    const/4 p0, 0x5

    return p0

    :cond_30
    const/4 p0, 0x6

    return p0
.end method

.method public static categorizeActivityImportance(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method public static getCallbackType(IZZ)I
    .registers 4

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    if-eqz p2, :cond_9

    const/4 p0, 0x3

    return p0

    :cond_9
    if-eqz p1, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized hitApiUsageLogCap()Z
    .registers 5

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 228
    iget-wide v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    .line 229
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 230
    iput v3, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2b

    .line 231
    monitor-exit p0

    return v3

    .line 233
    :cond_1a
    :try_start_1a
    iget v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x3c

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    if-lt v0, v2, :cond_29

    move v3, v1

    .line 235
    :cond_29
    monitor-exit p0

    return v3

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logLocationApiUsage(IILjava/lang/String;)V
    .registers 20

    .line 100
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0xd2

    const/4 v4, 0x0

    .line 107
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x1

    move/from16 v3, p2

    .line 113
    invoke-static {v3, v0, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 104
    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception v0

    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    .line 121
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V
    .registers 30

    .line 56
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p6, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    if-nez p9, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    const/16 v4, 0xd2

    if-eqz v2, :cond_19

    move v8, v1

    goto :goto_1e

    .line 67
    :cond_19
    invoke-static/range {p5 .. p5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    move v8, v5

    :goto_1e
    if-eqz v2, :cond_22

    move v9, v1

    goto :goto_27

    .line 70
    :cond_22
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getQuality()I

    move-result v5

    move v9, v5

    :goto_27
    if-eqz v2, :cond_2b

    move v10, v1

    goto :goto_34

    .line 73
    :cond_2b
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeInterval(J)I

    move-result v5

    move v10, v5

    :goto_34
    if-eqz v2, :cond_38

    move v11, v1

    goto :goto_41

    .line 77
    :cond_38
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v5

    .line 76
    invoke-static {v5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeDistance(F)I

    move-result v5

    move v11, v5

    :goto_41
    if-eqz v2, :cond_47

    const-wide/16 v5, 0x0

    :goto_45
    move-wide v12, v5

    goto :goto_4d

    .line 78
    :cond_47
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v5

    int-to-long v5, v5

    goto :goto_45

    :goto_4d
    if-nez v2, :cond_64

    move/from16 v2, p1

    if-ne v2, v0, :cond_54

    goto :goto_66

    .line 82
    :cond_54
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeExpireIn(J)I

    move-result v0

    move/from16 v5, p7

    move/from16 v6, p8

    move v14, v0

    move/from16 v0, p2

    goto :goto_6d

    :cond_64
    move/from16 v2, p1

    :goto_66
    move/from16 v0, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move v14, v1

    .line 83
    :goto_6d
    invoke-static {v0, v5, v6}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v15

    if-eqz v3, :cond_76

    :goto_73
    move/from16 v16, v1

    goto :goto_7f

    .line 86
    :cond_76
    invoke-virtual/range {p9 .. p9}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeRadius(F)I

    move-result v1

    goto :goto_73

    .line 87
    :goto_7f
    invoke-static/range {p10 .. p10}, Lcom/android/server/location/injector/LocationUsageLogger;->categorizeActivityImportance(Z)I

    move-result v17

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v18, p4

    .line 63
    invoke-static/range {v4 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_97

    :catch_8f
    move-exception v0

    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_97
    return-void
.end method
