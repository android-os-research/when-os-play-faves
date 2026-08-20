.class Lcom/samsung/android/gesture/AR_CalcFeature;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AR_Calc_Feature(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_SENSORDATA;Lcom/samsung/android/gesture/AR_BARODATA;Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;)V
    .registers 5
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;
    .param p2, "acc"    # Lcom/samsung/android/gesture/AR_SENSORDATA;
    .param p3, "baro"    # Lcom/samsung/android/gesture/AR_BARODATA;
    .param p4, "mag"    # Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_SaveAccData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_SENSORDATA;)V

    .line 365
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_SaveBaroData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_BARODATA;)V

    .line 366
    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/gesture/AR_CalcFeature;->AR_Calc_SaveMagData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;)V

    .line 367
    return-void
.end method

.method AR_Calc_SaveAccData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_SENSORDATA;)V
    .registers 10
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;
    .param p2, "acc"    # Lcom/samsung/android/gesture/AR_SENSORDATA;

    .line 319
    iput-object p2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->accData:Lcom/samsung/android/gesture/AR_SENSORDATA;

    .line 320
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->accFeature:Lcom/samsung/android/gesture/AR_ACCFEATURE;

    iget v1, p2, Lcom/samsung/android/gesture/AR_SENSORDATA;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v5, p2, Lcom/samsung/android/gesture/AR_SENSORDATA;->y:F

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget v5, p2, Lcom/samsung/android/gesture/AR_SENSORDATA;->z:F

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/gesture/AR_ACCFEATURE;->accelNorm:F

    .line 321
    return-void
.end method

.method AR_Calc_SaveBaroData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_BARODATA;)V
    .registers 8
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;
    .param p2, "baro"    # Lcom/samsung/android/gesture/AR_BARODATA;

    .line 324
    iput-object p2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroData:Lcom/samsung/android/gesture/AR_BARODATA;

    .line 325
    iget-byte v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->bufIsReady:B

    if-nez v0, :cond_13

    .line 326
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    iget v2, p2, Lcom/samsung/android/gesture/AR_BARODATA;->data:F

    aput v2, v0, v1

    goto :goto_38

    .line 328
    :cond_13
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget-object v2, v2, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    iget-object v3, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget v3, v3, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    add-int/lit8 v3, v3, 0x19

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x19

    aget v2, v2, v3

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/samsung/android/gesture/AR_BARODATA;->data:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 330
    :goto_38
    return-void
.end method

.method AR_Calc_SaveMagData(Lcom/samsung/android/gesture/AR_FEATURE;Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;)V
    .registers 10
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;
    .param p2, "mag"    # Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 333
    iput-object p2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magData:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    .line 334
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v0, v0, v1

    iget v1, p2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    .line 335
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v0, v0, v1

    iget v1, p2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    .line 336
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v0, v0, v1

    iget v1, p2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    .line 338
    iget-byte v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->bufIsReadyMag:B

    if-nez v0, :cond_44

    .line 339
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    .line 340
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    .line 341
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    goto :goto_ad

    .line 343
    :cond_44
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v3, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v3, v3, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    .line 344
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v3, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v3, v3, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    .line 345
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v2, v2, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget-object v3, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v3, v3, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    .line 347
    :goto_ad
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v5, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v5, v5, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget v5, v5, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->y:F

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget-object v5, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v5, v5, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;

    iget v5, v5, Lcom/samsung/android/gesture/AR_MAG_SENSORDATA;->z:F

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGradNorm:F

    .line 349
    return-void
.end method

.method AR_Calc_UpdateBaroIndex(Lcom/samsung/android/gesture/AR_FEATURE;)V
    .registers 5
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;

    .line 352
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x19

    iput v1, v0, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    .line 353
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    iget v0, v0, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    if-nez v0, :cond_14

    .line 354
    iput-byte v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->bufIsReady:B

    .line 355
    :cond_14
    return-void
.end method

.method AR_Calc_UpdateMagIndex(Lcom/samsung/android/gesture/AR_FEATURE;)V
    .registers 5
    .param p1, "ARFeatureData"    # Lcom/samsung/android/gesture/AR_FEATURE;

    .line 358
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v1, v1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    .line 359
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    iget v0, v0, Lcom/samsung/android/gesture/AR_MAGFEATURE;->index:I

    if-nez v0, :cond_14

    .line 360
    iput-byte v2, p1, Lcom/samsung/android/gesture/AR_FEATURE;->bufIsReadyMag:B

    .line 361
    :cond_14
    return-void
.end method
