.class Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AR_Calc_Feature(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V
    .registers 5

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveAccData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;)V

    .line 375
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveBaroData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;)V

    .line 376
    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/server/wifi/wcm/AR_CalcFeature;->AR_Calc_SaveMagData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V

    return-void
.end method

.method AR_Calc_SaveAccData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;)V
    .registers 9

    .line 324
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accData:Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;

    .line 325
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->x:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->y:F

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    iget p1, p2, Lcom/samsung/android/server/wifi/wcm/AR_SENSORDATA;->z:F

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;->accelNorm:F

    return-void
.end method

.method AR_Calc_SaveBaroData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;)V
    .registers 5

    .line 329
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroData:Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;

    .line 330
    iget-byte p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    if-nez p0, :cond_11

    .line 331
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    aput p2, p1, p0

    goto :goto_2c

    .line 333
    :cond_11
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    add-int/lit8 v0, p0, 0x5

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x5

    aget v0, p1, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_BARODATA;->data:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    aput v0, p1, p0

    :goto_2c
    return-void
.end method

.method AR_Calc_SaveMagData(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;)V
    .registers 9

    .line 340
    iput-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magData:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    .line 341
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magRaw:[Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    aget-object v2, v0, v1

    iget v3, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 342
    iget v4, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    iput v4, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 343
    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    iput p2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 344
    iget-byte v2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReadyMag:B

    if-nez v2, :cond_24

    .line 345
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    const/4 v0, 0x0

    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    .line 346
    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    .line 347
    iput v0, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    goto :goto_47

    .line 349
    :cond_24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x5

    aget-object v5, v0, v5

    iget v5, v5, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    sub-float/2addr v3, v5

    iput v3, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    add-int/lit8 v3, v1, 0x1

    .line 352
    rem-int/lit8 v3, v3, 0x5

    aget-object v3, v0, v3

    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    sub-float/2addr v4, v3

    iput v4, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    add-int/lit8 v1, v1, 0x1

    .line 355
    rem-int/lit8 v1, v1, 0x5

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    sub-float/2addr p2, v0

    iput p2, v2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    .line 359
    :goto_47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->x:F

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p2, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    iget p2, p2, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->y:F

    float-to-double v4, p2

    .line 360
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGrad:Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;

    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAG_SENSORDATA;->z:F

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGradNorm:F

    return-void
.end method

.method AR_Calc_UpdateBaroIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V
    .registers 4

    .line 364
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    if-nez v0, :cond_e

    .line 365
    iput-byte v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    :cond_e
    return-void
.end method

.method AR_Calc_UpdateMagIndex(Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;)V
    .registers 4

    .line 369
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->index:I

    if-nez v0, :cond_e

    .line 370
    iput-byte v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReadyMag:B

    :cond_e
    return-void
.end method
