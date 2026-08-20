.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# static fields
.field public static final BRIGHTNESS_FILTER_TAG:Ljava/lang/String; = "AmbientBrightnessFilter"

.field public static final COLOR_TEMPERATURE_FILTER_TAG:Ljava/lang/String; = "AmbientColorTemperatureFilter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .registers 24

    move-object/from16 v0, p2

    .line 62
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v15

    const-string v1, "AmbientBrightnessFilter"

    .line 64
    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    .line 66
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v14

    const-string v1, "AmbientColorTemperatureFilter"

    .line 68
    invoke-static {v1, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    .line 69
    invoke-static/range {p2 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v5

    const v1, 0x10700b8

    .line 70
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    const v1, 0x10700b7

    .line 73
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v7

    const v1, 0x10500b5

    .line 76
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v8

    const v1, 0x10700b5

    .line 79
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    const v1, 0x10700b4

    .line 82
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v10

    const v1, 0x10500b4

    .line 85
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v11

    const v1, 0x10700ae

    .line 88
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v12

    const v1, 0x10700b1

    .line 90
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v13

    const v1, 0x10700b9

    .line 92
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v16

    const v1, 0x10700ba

    .line 95
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v17

    .line 98
    new-instance v3, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v18, v3

    move-object v3, v14

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[FF[F[FF[F[F[F[F)V

    move-object/from16 v1, v18

    move-object/from16 v0, v20

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    move-object/from16 v0, v19

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    return-object v1
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x10e0077

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 122
    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v0
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x104033d

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10e007c

    .line 134
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 137
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .registers 8

    const v0, 0x10e007d

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x10e007e

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v0, 0x10700af

    .line 145
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v4

    const v0, 0x10700b6

    .line 147
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v5

    const v0, 0x10700b0

    .line 149
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    .line 151
    new-instance p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object p0
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .registers 4

    .line 156
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 158
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_11

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 161
    :cond_11
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 6

    .line 165
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 167
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_31

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 179
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 170
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p1, :cond_2d

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 173
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_31

    if-eqz v3, :cond_2a

    .line 179
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_31
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    throw p1
.end method
