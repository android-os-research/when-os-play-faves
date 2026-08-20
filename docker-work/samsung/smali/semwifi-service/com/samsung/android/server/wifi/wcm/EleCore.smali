.class Lcom/samsung/android/server/wifi/wcm/EleCore;
.super Ljava/lang/Object;
.source "SemWifiEleGeoMagnetic.java"


# static fields
.field static final AR_ELE_ACC_TIME:I = 0xa

.field static final AR_ELE_BARO_SIGN:I = 0x14

.field static final AR_ELE_BARO_TIME:I = 0x1

.field static final AR_ELE_HIGH_BOUND_ACC:I = 0x79

.field static final AR_ELE_LOW_BOUND_ACC:I = 0x40

.field static final AR_ELE_MAG_TIME:I = 0x14

.field static final AR_GRAD_BARO_ELE:F = 0.05f

.field static final AR_GRAD_MAG_ELE:F = 15.0f

.field static final TH_GRAD_BARO:F = 0.03f


# instance fields
.field gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    return-void
.end method


# virtual methods
.method AR_Ele_Classification(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)V
    .registers 7

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Baro()V

    .line 429
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->accFeature:Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Accel(Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;)V

    .line 430
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->magFeature:Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification_Mag(Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;)V

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2d

    iget-byte v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2d

    iget-byte v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    if-ne v3, v2, :cond_2d

    iget v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    if-eqz v3, :cond_2d

    .line 434
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    goto :goto_38

    :cond_2d
    if-eq v0, v1, :cond_38

    .line 435
    iget-byte p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    if-eq p0, v2, :cond_38

    .line 436
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    :cond_38
    :goto_38
    return-void
.end method

.method AR_Ele_Classification_Accel(Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;)V
    .registers 3

    .line 418
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_ACCFEATURE;->accelNorm:F

    const/high16 v0, 0x42800000    # 64.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1c

    const/high16 v0, 0x42f20000    # 121.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1c

    .line 419
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    const/16 v0, 0xa

    if-ge p1, v0, :cond_21

    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 420
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    goto :goto_21

    .line 423
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleAccTime:B

    :cond_21
    :goto_21
    return-void
.end method

.method AR_Ele_Classification_Baro()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    .line 399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    const/4 v1, 0x1

    if-ge v0, v1, :cond_20

    add-int/2addr v0, v1

    int-to-byte v0, v0

    .line 400
    iput-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    goto :goto_20

    .line 403
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleBaroTime:B

    :cond_20
    :goto_20
    return-void
.end method

.method AR_Ele_Classification_Mag(Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;)V
    .registers 3

    .line 408
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAGFEATURE;->magGradNorm:F

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_16

    .line 409
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    const/16 v0, 0x14

    if-ge p1, v0, :cond_1b

    add-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 410
    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    goto :goto_1b

    .line 413
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    const/4 p1, 0x0

    iput-byte p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->eleMagTime:B

    :cond_1b
    :goto_1b
    return-void
.end method

.method AR_Ele_Detect(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)Z
    .registers 5

    .line 474
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;

    iget-byte v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->bufIsReady:B

    if-nez v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 477
    :cond_8
    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iget-boolean v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    .line 478
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_FEATURE;->baroFeature:Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_GetGradient(Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/EleCore;->AR_Ele_Classification(Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;)V

    .line 481
    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    if-eq v1, v0, :cond_4a

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE CHANGE FROM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->previousActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_4a
    iget-object p0, p1, Lcom/samsung/android/server/wifi/wcm/AR_MAIN_DATA;->EleInfo:Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ACTIVITYINFO;->isActivity:Z

    return p0
.end method

.method AR_Ele_GetGradient(Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;)V
    .registers 7

    .line 441
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/EleCore;->gAREle:Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;

    iget-object v0, p1, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->lowpassBaro:[F

    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/AR_BAROFEATURE;->index:I

    aget v1, v0, p1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro:F

    const p1, 0x3cf5c28f    # 0.03f

    cmpl-float v0, v1, p1

    const/4 v3, 0x0

    if-ltz v0, :cond_1d

    .line 444
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    if-ge v0, v2, :cond_28

    :cond_1d
    const v0, -0x430a3d71    # -0.03f

    cmpg-float v4, v1, v0

    if-gtz v4, :cond_2f

    iget v4, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    if-lt v4, v2, :cond_2f

    .line 446
    :cond_28
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 447
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    .line 448
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    goto :goto_5e

    :cond_2f
    cmpl-float p1, v1, p1

    const/16 v4, 0x14

    if-ltz p1, :cond_45

    .line 450
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 451
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    if-lt p1, v4, :cond_42

    const/4 p1, -0x1

    .line 453
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    goto :goto_5e

    .line 455
    :cond_42
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    goto :goto_5e

    :cond_45
    cmpg-float p1, v1, v0

    if-gtz p1, :cond_58

    .line 458
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 459
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    if-lt p1, v4, :cond_55

    .line 461
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    goto :goto_5e

    .line 463
    :cond_55
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    goto :goto_5e

    .line 466
    :cond_58
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_Sign:I

    .line 467
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_DN:I

    .line 468
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/AR_ELE_DATA;->gradBaro_UP:I

    :goto_5e
    return-void
.end method
