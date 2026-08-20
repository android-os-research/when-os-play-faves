.class public Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;
.super Ljava/lang/Object;
.source "SemThroughputPredictor.java"


# static fields
.field private static final BIT_PER_TONE_SCALE:I = 0x3e8

.field private static final B_MODE_MAX_MBPS:I = 0xb

.field public static final CHANNEL_UTILIZATION_BOOST_BT_CONNECTED_2G:I = 0x3f

.field public static final CHANNEL_UTILIZATION_DEFAULT_2G:I = 0x5f

.field public static final CHANNEL_UTILIZATION_DEFAULT_ABOVE_2G:I = 0xf

.field public static final INVALID:I = -0x1

.field private static final MAX_BITS_PER_TONE_11AC:I

.field private static final MAX_BITS_PER_TONE_11AX:I

.field private static final MAX_BITS_PER_TONE_11BE:I

.field private static final MAX_BITS_PER_TONE_11N:I

.field private static final MAX_BITS_PER_TONE_LEGACY:I

.field public static final MAX_CHANNEL_UTILIZATION:I = 0xff

.field private static final MAX_NUM_SPATIAL_STREAM_11AC:I = 0x8

.field private static final MAX_NUM_SPATIAL_STREAM_11AX:I = 0x8

.field private static final MAX_NUM_SPATIAL_STREAM_11BE:I = 0x10

.field private static final MAX_NUM_SPATIAL_STREAM_11N:I = 0x4

.field private static final MAX_NUM_SPATIAL_STREAM_LEGACY:I = 0x1

.field private static final MICRO_TO_NANO_RATIO:I = 0x3e8

.field public static final MIN_CHANNEL_UTILIZATION:I = 0x0

.field private static final NOISE_FLOOR_20MHZ_DBM:I = -0x60

.field private static final NUM_TONE_PER_SYM_11AC_160MHZ:I = 0x1d4

.field private static final NUM_TONE_PER_SYM_11AC_20MHZ:I = 0x34

.field private static final NUM_TONE_PER_SYM_11AC_40MHZ:I = 0x6c

.field private static final NUM_TONE_PER_SYM_11AC_80MHZ:I = 0xea

.field private static final NUM_TONE_PER_SYM_11AX_BE_160MHZ:I = 0x7a8

.field private static final NUM_TONE_PER_SYM_11AX_BE_20MHZ:I = 0xea

.field private static final NUM_TONE_PER_SYM_11AX_BE_40MHZ:I = 0x1d4

.field private static final NUM_TONE_PER_SYM_11AX_BE_80MHZ:I = 0x3d4

.field private static final NUM_TONE_PER_SYM_11BE_320MHZ:I = 0xf50

.field private static final NUM_TONE_PER_SYM_11N_20MHZ:I = 0x34

.field private static final NUM_TONE_PER_SYM_11N_40MHZ:I = 0x6c

.field private static final NUM_TONE_PER_SYM_LEGACY:I = 0x30

.field private static final SNR_DB_TO_BIT_PER_TONE_HIGH_SNR_SCALE:I = 0x14d

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT:[I

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT_MAX:I = 0x9

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT_MIN:I = -0xa

.field private static final SNR_MARGIN_DB:I = 0x10

.field private static final SYM_DURATION_11AC_NS:I = 0xe10

.field private static final SYM_DURATION_11AX_BE_NS:I = 0x3520

.field private static final SYM_DURATION_11N_NS:I = 0xe10

.field private static final SYM_DURATION_LEGACY_NS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemThroughputPredictor"

.field private static final TWO_IN_DB:I = 0x3

.field private static final WIFI_ENABLE_6GHZ_BEACON_RSSI_BOOST:Z = true

.field private static final WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_ENABLE:Z = true

.field private static final WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_VALUE:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide v0, 0x40b1940000000000L    # 4500.0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_LEGACY:I

    const-wide v0, 0x40b3880000000000L    # 5000.0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11N:I

    const-wide v0, 0x40ba0aaaaaaaaaabL    # 6666.666666666667

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AC:I

    const-wide v0, 0x40c046aaaaaaaaabL    # 8333.333333333334

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AX:I

    const-wide v0, 0x40c3880000000000L    # 10000.0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11BE:I

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 92
    fill-array-data v0, :array_46

    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->SNR_DB_TO_BIT_PER_TONE_LUT:[I

    return-void

    :array_46
    .array-data 4
        0x0
        0xab
        0xd4
        0x106
        0x143
        0x18c
        0x1e4
        0x24a
        0x2c2
        0x34c
        0x3e8
        0x498
        0x55a
        0x62f
        0x714
        0x80a
        0x90d
        0xa1c
        0xb36
        0xc59
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    .line 118
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateAirTimeFraction(II)I
    .registers 5

    rsub-int p1, p1, 0xff

    const/4 v0, 0x1

    move v1, p1

    :goto_4
    if-gt v0, p2, :cond_c

    mul-int/2addr v1, v1

    .line 500
    div-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 502
    :cond_c
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_2e

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " airTime20: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " airTime: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemThroughputPredictor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return v1
.end method

.method private static calculateBitPerTone(I)I
    .registers 3

    const/16 v0, 0x9

    if-gt p0, v0, :cond_17

    const/16 v0, -0xa

    .line 440
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    .line 442
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->SNR_DB_TO_BIT_PER_TONE_LUT:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 443
    aget p0, v0, p0

    goto :goto_19

    :cond_17
    mul-int/lit16 p0, p0, 0x14d

    :goto_19
    return p0
.end method

.method private getValidChannelUtilization(IIIZ)I
    .registers 6

    .line 456
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result p1

    .line 457
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->isValidUtilizationRatio(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, p2

    goto :goto_1b

    .line 459
    :cond_c
    invoke-static {p3}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->isValidUtilizationRatio(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, p3

    goto :goto_1b

    :cond_14
    if-eqz p1, :cond_19

    const/16 v0, 0x5f

    goto :goto_1b

    :cond_19
    const/16 v0, 0xf

    :goto_1b
    if-eqz p1, :cond_27

    if-eqz p4, :cond_27

    add-int/lit8 v0, v0, 0x3f

    const/16 p1, 0xff

    .line 468
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 470
    :cond_27
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    if-eqz p0, :cond_59

    .line 471
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " utilization (BssLoad) "

    .line 472
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " utilization (LLStats) "

    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isBluetoothConnected: "

    .line 474
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " final utilization: "

    .line 475
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemThroughputPredictor"

    .line 472
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return v0
.end method

.method private static isValidUtilizationRatio(I)Z
    .registers 2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private predictThroughputInternal(IZIIIII)I
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "SemThroughputPredictor"

    const/4 v4, 0x1

    move/from16 v5, p5

    if-ge v5, v4, :cond_13

    const-string v5, "maxNumSpatialStream < 1 due to wrong implementation. Overridden to 1"

    .line 300
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    :cond_13
    const/16 v7, 0xe10

    const/16 v8, 0x10

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-ne v1, v4, :cond_2c

    const/16 v5, 0x30

    .line 308
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_LEGACY:I

    const/16 v7, 0xfa0

    move v13, v5

    move v5, v4

    :goto_25
    move/from16 v18, v7

    move v7, v6

    move/from16 v6, v18

    goto/16 :goto_a2

    :cond_2c
    const/16 v13, 0x34

    const/16 v14, 0x6c

    const/4 v15, 0x4

    if-ne v1, v15, :cond_3f

    if-nez v2, :cond_36

    goto :goto_38

    :cond_36
    move v10, v4

    move v13, v14

    .line 318
    :goto_38
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 319
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11N:I

    goto :goto_25

    :cond_3f
    const/16 v16, 0x1d4

    const/16 v17, 0xea

    const/16 v6, 0x8

    if-ne v1, v9, :cond_5f

    if-nez v2, :cond_4a

    goto :goto_58

    :cond_4a
    if-ne v2, v4, :cond_4f

    move v10, v4

    move v13, v14

    goto :goto_58

    :cond_4f
    if-ne v2, v11, :cond_55

    move v10, v11

    move/from16 v13, v17

    goto :goto_58

    :cond_55
    move v10, v12

    move/from16 v13, v16

    .line 335
    :goto_58
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 336
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AC:I

    goto :goto_25

    :cond_5f
    const/16 v7, 0x3d4

    const/16 v13, 0x7a8

    const/4 v14, 0x6

    if-ne v1, v14, :cond_81

    if-nez v2, :cond_6b

    move/from16 v13, v17

    goto :goto_77

    :cond_6b
    if-ne v2, v4, :cond_71

    move v10, v4

    move/from16 v13, v16

    goto :goto_77

    :cond_71
    if-ne v2, v11, :cond_76

    move v13, v7

    move v10, v11

    goto :goto_77

    :cond_76
    move v10, v12

    .line 352
    :goto_77
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 353
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AX:I

    :goto_7d
    move v7, v6

    const/16 v6, 0x3520

    goto :goto_a2

    :cond_81
    if-ne v1, v6, :cond_145

    if-nez v2, :cond_88

    move/from16 v13, v17

    goto :goto_9b

    :cond_88
    if-ne v2, v4, :cond_8e

    move v10, v4

    move/from16 v13, v16

    goto :goto_9b

    :cond_8e
    if-ne v2, v11, :cond_93

    move v13, v7

    move v10, v11

    goto :goto_9b

    :cond_93
    if-ne v2, v12, :cond_97

    move v10, v12

    goto :goto_9b

    :cond_97
    const/16 v6, 0xf50

    move v13, v6

    move v10, v15

    .line 372
    :goto_9b
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 373
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11BE:I

    goto :goto_7d

    .line 380
    :goto_a2
    invoke-static/range {p7 .. p7}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v14

    if-eqz v14, :cond_bd

    if-eq v2, v4, :cond_ba

    if-eq v2, v11, :cond_b7

    if-eq v2, v12, :cond_b4

    if-eq v2, v9, :cond_b1

    goto :goto_bd

    :cond_b1
    add-int/lit8 v4, p4, 0xc

    goto :goto_bf

    :cond_b4
    add-int/lit8 v4, p4, 0x9

    goto :goto_bf

    :cond_b7
    add-int/lit8 v4, p4, 0x6

    goto :goto_bf

    :cond_ba
    add-int/lit8 v4, p4, 0x3

    goto :goto_bf

    :cond_bd
    :goto_bd
    move/from16 v4, p4

    :goto_bf
    mul-int/lit8 v9, v10, 0x3

    add-int/lit8 v9, v9, -0x60

    add-int/2addr v9, v8

    sub-int v8, v4, v9

    .line 404
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->calculateBitPerTone(I)I

    move-result v9

    .line 405
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v9, v7, v5

    int-to-long v11, v9

    int-to-long v13, v13

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    mul-int/lit16 v9, v6, 0x3e8

    int-to-long v13, v9

    .line 409
    div-long/2addr v11, v13

    long-to-int v9, v11

    move/from16 v11, p6

    .line 412
    invoke-direct {v0, v11, v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->calculateAirTimeFraction(II)I

    move-result v10

    mul-int/2addr v10, v9

    .line 414
    div-int/lit16 v10, v10, 0xff

    if-eqz p2, :cond_ec

    const/16 v11, 0xb

    .line 417
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 419
    :cond_ec
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_144

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " BW: "

    .line 421
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RSSI: "

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Nss: "

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Mode: "

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " symDur: "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " snrDb "

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitPerTone: "

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rate: "

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " throughput: "

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    return v10

    :cond_145
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public predictMaxRxThroughput(IZII)I
    .registers 13

    const/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 149
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII)I

    move-result p0

    return p0
.end method

.method public predictMaxTxThroughput(IZII)I
    .registers 13

    const/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 137
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII)I

    move-result p0

    return p0
.end method

.method public predictRxThroughput(IZIIIII)I
    .registers 18

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, p0

    move/from16 v9, p6

    move/from16 v3, p7

    .line 172
    invoke-direct {p0, v9, v0, v3, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIIZ)I

    move-result v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    move v7, p4

    .line 174
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII)I

    move-result v0

    return v0
.end method

.method public predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I
    .registers 25

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v7, p5

    move/from16 v4, p6

    const/4 v5, 0x0

    const-string v6, "SemThroughputPredictor"

    if-nez v1, :cond_16

    const-string v0, "Null device capabilities passed to throughput predictor"

    .line 198
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 202
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberTxSpatialStreams()I

    move-result v8

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberRxSpatialStreams()I

    move-result v9

    .line 202
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    const/4 v8, 0x2

    .line 209
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x5

    if-eq v2, v12, :cond_4c

    if-eq v2, v14, :cond_44

    if-eq v2, v11, :cond_3c

    if-eq v2, v10, :cond_35

    goto :goto_54

    .line 215
    :cond_35
    invoke-virtual {v1, v10}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_55

    .line 221
    :cond_3c
    invoke-virtual {v1, v11}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v2

    if-eqz v2, :cond_44

    move v10, v11

    goto :goto_55

    .line 227
    :cond_44
    invoke-virtual {v1, v14}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v10, v14

    goto :goto_55

    .line 233
    :cond_4c
    invoke-virtual {v1, v12}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v2

    if-eqz v2, :cond_54

    move v10, v12

    goto :goto_55

    :cond_54
    :goto_54
    move v10, v13

    :goto_55
    const/4 v2, 0x3

    if-eq v3, v13, :cond_77

    if-eq v3, v8, :cond_6f

    if-eq v3, v2, :cond_67

    if-eq v3, v14, :cond_5f

    goto :goto_7f

    .line 246
    :cond_5f
    invoke-virtual {v1, v14}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v3

    if-eqz v3, :cond_67

    move v3, v14

    goto :goto_80

    .line 252
    :cond_67
    invoke-virtual {v1, v2}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    move v3, v2

    goto :goto_80

    .line 258
    :cond_6f
    invoke-virtual {v1, v8}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v2

    if-eqz v2, :cond_77

    move v3, v8

    goto :goto_80

    .line 264
    :cond_77
    invoke-virtual {v1, v13}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    move v3, v13

    goto :goto_80

    :cond_7f
    :goto_7f
    move v3, v5

    .line 273
    :goto_80
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_a8

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Nss: "

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Device Nss: "

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", freq: "

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v4, p9

    .line 281
    invoke-direct {p0, v7, v1, v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIIZ)I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, v10

    move/from16 v4, p4

    move v5, v9

    move/from16 v7, p5

    .line 286
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII)I

    move-result v0

    return v0
.end method

.method public predictTxThroughput(IZIIIII)I
    .registers 18

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, p0

    move/from16 v9, p6

    move/from16 v3, p7

    .line 160
    invoke-direct {p0, v9, v0, v3, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIIZ)I

    move-result v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    move v7, p4

    .line 162
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII)I

    move-result v0

    return v0
.end method
