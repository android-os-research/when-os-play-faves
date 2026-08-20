.class Lcom/samsung/android/gesture/ElevatorCore;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"


# static fields
.field static final AR_ELEVATOR_ACC_TIME:I = 0xa

.field static final AR_ELEVATOR_BARO_SIGN:I = 0x64

.field static final AR_ELEVATOR_BARO_TIME:I = 0x1

.field static final AR_ELEVATOR_HIGH_BOUND_ACC:I = 0x79

.field static final AR_ELEVATOR_LOW_BOUND_ACC:I = 0x40

.field static final AR_ELEVATOR_MAG_TIME:I = 0x14

.field static final AR_GRAD_BARO_ELEVATOR:F = 0.08f

.field static final AR_GRAD_MAG_ELEVATOR:F = 0.64f

.field static final TH_GRAD_BARO:F = 0.05f


# instance fields
.field gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    invoke-direct {v0}, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    .line 386
    return-void
.end method


# virtual methods
.method AR_Elevator_Classification(Lcom/samsung/android/gesture/AR_MAIN_DATA;)V
    .registers 6
    .param p1, "ARMainData"    # Lcom/samsung/android/gesture/AR_MAIN_DATA;

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_Classification_Baro()V

    .line 425
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_FEATURE;->accFeature:Lcom/samsung/android/gesture/AR_ACCFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_Classification_Accel(Lcom/samsung/android/gesture/AR_ACCFEATURE;)V

    .line 426
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_FEATURE;->magFeature:Lcom/samsung/android/gesture/AR_MAGFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_Classification_Mag(Lcom/samsung/android/gesture/AR_MAGFEATURE;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    const/16 v3, 0xa

    if-ne v0, v3, :cond_33

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    if-eqz v0, :cond_33

    .line 429
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iput-boolean v2, v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    goto :goto_44

    .line 431
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    if-eq v0, v2, :cond_44

    .line 432
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    .line 434
    :cond_44
    :goto_44
    return-void
.end method

.method AR_Elevator_Classification_Accel(Lcom/samsung/android/gesture/AR_ACCFEATURE;)V
    .registers 4
    .param p1, "accFeature"    # Lcom/samsung/android/gesture/AR_ACCFEATURE;

    .line 412
    iget v0, p1, Lcom/samsung/android/gesture/AR_ACCFEATURE;->accelNorm:F

    const/high16 v1, 0x42800000    # 64.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_28

    iget v0, p1, Lcom/samsung/android/gesture/AR_ACCFEATURE;->accelNorm:F

    const/high16 v1, 0x42f20000    # 121.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_28

    .line 413
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2d

    .line 414
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    if-ge v0, v1, :cond_2d

    .line 415
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    goto :goto_2d

    .line 419
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorAccTime:B

    .line 421
    :cond_2d
    :goto_2d
    return-void
.end method

.method AR_Elevator_Classification_Baro()V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3da3d70a    # 0.08f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    .line 390
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    const/4 v1, 0x1

    if-ge v0, v1, :cond_24

    .line 391
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    add-int/2addr v2, v1

    int-to-byte v1, v2

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    goto :goto_24

    .line 395
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorBaroTime:B

    .line 397
    :cond_24
    :goto_24
    return-void
.end method

.method AR_Elevator_Classification_Mag(Lcom/samsung/android/gesture/AR_MAGFEATURE;)V
    .registers 4
    .param p1, "magFeature"    # Lcom/samsung/android/gesture/AR_MAGFEATURE;

    .line 401
    iget v0, p1, Lcom/samsung/android/gesture/AR_MAGFEATURE;->magGradNorm:F

    const v1, 0x3f23d70a    # 0.64f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b

    .line 402
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    const/16 v1, 0x14

    if-ge v0, v1, :cond_20

    .line 403
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    goto :goto_20

    .line 407
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->elevatorMagTime:B

    .line 409
    :cond_20
    :goto_20
    return-void
.end method

.method AR_Elevator_Detect(Lcom/samsung/android/gesture/AR_MAIN_DATA;[F)Z
    .registers 6
    .param p1, "ARMainData"    # Lcom/samsung/android/gesture/AR_MAIN_DATA;
    .param p2, "mag"    # [F

    .line 469
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    iget-byte v0, v0, Lcom/samsung/android/gesture/AR_FEATURE;->bufIsReady:B

    if-nez v0, :cond_8

    .line 470
    const/4 v0, 0x0

    return v0

    .line 472
    :cond_8
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v1, v1, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    iput-boolean v1, v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->previsActivity:Z

    .line 473
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->arFeature:Lcom/samsung/android/gesture/AR_FEATURE;

    iget-object v0, v0, Lcom/samsung/android/gesture/AR_FEATURE;->baroFeature:Lcom/samsung/android/gesture/AR_BAROFEATURE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_GetGradient(Lcom/samsung/android/gesture/AR_BAROFEATURE;)V

    .line 474
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/ElevatorCore;->AR_Elevator_Classification(Lcom/samsung/android/gesture/AR_MAIN_DATA;)V

    .line 476
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v0, v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->previsActivity:Z

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v1, v1, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    if-eq v0, v1, :cond_54

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Elevator State From  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v2, v2, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->previsActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  To  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v2, v2, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_54
    iget-object v0, p1, Lcom/samsung/android/gesture/AR_MAIN_DATA;->ElevatorInfo:Lcom/samsung/android/gesture/AR_ACTIVITYINFO;

    iget-boolean v0, v0, Lcom/samsung/android/gesture/AR_ACTIVITYINFO;->isActivity:Z

    return v0
.end method

.method AR_Elevator_GetGradient(Lcom/samsung/android/gesture/AR_BAROFEATURE;)V
    .registers 7
    .param p1, "baroFeature"    # Lcom/samsung/android/gesture/AR_BAROFEATURE;

    .line 438
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget-object v1, p1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    iget v2, p1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    aget v1, v1, v2

    iget-object v2, p1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->lowpassBaro:[F

    iget v3, p1, Lcom/samsung/android/gesture/AR_BAROFEATURE;->index:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x19

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    .line 440
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    if-ge v0, v4, :cond_38

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    const v3, -0x42b33333    # -0.05f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_45

    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    if-lt v0, v4, :cond_45

    .line 441
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    .line 442
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    .line 443
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    goto :goto_9a

    .line 445
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    cmpl-float v0, v0, v1

    const/16 v1, 0x64

    if-ltz v0, :cond_6b

    .line 446
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v3, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    .line 447
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    .line 448
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    if-lt v0, v1, :cond_66

    .line 449
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    goto :goto_9a

    .line 451
    :cond_66
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    goto :goto_9a

    .line 453
    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_8e

    .line 454
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    .line 455
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v3, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    .line 456
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iget v0, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    if-lt v0, v1, :cond_89

    .line 457
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v4, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    goto :goto_9a

    .line 459
    :cond_89
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    goto :goto_9a

    .line 462
    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_Sign:I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_DN:I

    .line 464
    iget-object v0, p0, Lcom/samsung/android/gesture/ElevatorCore;->gARElevator:Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;

    iput v2, v0, Lcom/samsung/android/gesture/AR_ELEVATOR_DATA;->gradBaro_UP:I

    .line 466
    :goto_9a
    return-void
.end method
