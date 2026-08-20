.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
.super Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.source "Fingerprint21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalResultController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;
    }
.end annotation


# instance fields
.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I


# direct methods
.method public static synthetic $r8$lambda$2zUyqegYJCKikIIRpT2qAVxh-nI(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJLjava/util/ArrayList;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onAuthenticated$2(IIJLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$90x4WERJv43jDE8KaqsrJb9P42U(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onEnumerate$5(IIJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Glgt_EjhKtYsxQ2FmV4bKYJOTsU(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onError$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5krAvcAISLUNECaph-UvnV0eK0(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onAcquired_2_2$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vuj65V446psYxh9EFe4oqBkvaEc(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onRemoved$4(IIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBnoCWBcnEwJtHay6yz4sqN1osA(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onEnrollResult$0(IIJI)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .registers 5

    .line 305
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    .line 306
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    .line 307
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    .line 308
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    .line 309
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-void
.end method

.method private synthetic lambda$onAcquired_2_2$1(II)V
    .registers 5

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAcquired: acquiredInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsInternalClientFreeEvent(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 355
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->handleInternalClientFreeEvent(I)V

    return-void

    .line 358
    :cond_29
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsRequestCommandEvent(II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->handleRequestEvent(I)V

    return-void

    .line 363
    :cond_33
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_42

    .line 364
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsSkipEvent(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    .line 367
    :cond_3e
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semUpdateVendorInfo(II)I

    move-result p2

    .line 371
    :cond_42
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v1, :cond_68

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAcquired for non-acquisition client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 373
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_68
    check-cast v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 379
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 381
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemAcquire(III)V

    return-void
.end method

.method private synthetic lambda$onAuthenticated$2(IIJLjava/util/ArrayList;)V
    .registers 16

    .line 440
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 441
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_26

    .line 442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 442
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz p1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 452
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAuthenticated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getFingerprintName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 457
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    move-object v4, v2

    move v6, p2

    move v7, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 458
    invoke-interface {v0, v2, v1, p5}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 461
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    invoke-interface {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemAuthenticated(Z)V

    return-void
.end method

.method private synthetic lambda$onEnrollResult$0(IIJI)V
    .registers 16

    .line 319
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 320
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    if-nez v1, :cond_26

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEnrollResult for non-enroll client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 321
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 326
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 327
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 329
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    move-object v4, v1

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 331
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    .line 332
    invoke-virtual {v0, v1, p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p5, :cond_4b

    .line 335
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemEnrolled()V

    :cond_4b
    return-void
.end method

.method private synthetic lambda$onEnumerate$5(IIJI)V
    .registers 13

    .line 516
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 517
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v0, :cond_26

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 518
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 523
    :cond_26
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 524
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 525
    invoke-interface {p0, v6, p5}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private synthetic lambda$onError$3(II)V
    .registers 6

    .line 469
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    .line 470
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_4f

    .line 475
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onError for non-error consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_4f
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 480
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_64

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    .line 483
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    if-eqz v1, :cond_64

    .line 485
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onHardwareUnavailable()V

    .line 489
    :cond_64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    if-eqz p0, :cond_6f

    .line 490
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemError(III)V

    :cond_6f
    return-void
.end method

.method private synthetic lambda$onRemoved$4(IIIJ)V
    .registers 14

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed, fingerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 501
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v0, :cond_42

    .line 502
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onRemoved for non-removal consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 502
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_42
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    move-object v2, v0

    move v4, p3

    move v5, p1

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 508
    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 509
    invoke-interface {p0, v0, p2}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method


# virtual methods
.method public final handleInternalClientFreeEvent(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintInternalEvent;
        .end annotation
    .end param

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x7531

    if-eq p1, v0, :cond_11

    const/16 v0, 0x7532

    if-eq p1, v0, :cond_11

    goto :goto_24

    .line 392
    :cond_11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-eqz v0, :cond_24

    .line 393
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemSpenEvent(I)V

    goto :goto_24

    .line 399
    :cond_1b
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_24

    .line 400
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onSemGestureEvent(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final handleRequestEvent(I)V
    .registers 3

    .line 408
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 409
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    if-nez v0, :cond_25

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SensorTestEvent for non-request client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 410
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_25
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    .line 416
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;->onRequestResult(I)V

    return-void
.end method

.method public onAcquired(JII)V
    .registers 5

    .line 343
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired_2_2(JII)V

    return-void
.end method

.method public onAcquired_2_2(JII)V
    .registers 5

    .line 348
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    .line 425
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_1f

    if-eqz p3, :cond_1f

    .line 427
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 428
    instance-of v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    if-eqz v2, :cond_1f

    .line 429
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    .line 430
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->useEarlyAuthenticationResult()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 431
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleEarlyAuthenticationResult()V

    const-wide/16 v2, 0xa

    goto :goto_21

    :cond_1f
    const-wide/16 v2, 0x0

    :goto_21
    move-wide v7, v2

    .line 439
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJLjava/util/ArrayList;)V

    invoke-virtual {v9, v10, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15

    .line 318
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JIII)V
    .registers 15

    .line 515
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JII)V
    .registers 5

    .line 468
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JIII)V
    .registers 15

    .line 498
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, p5

    move v5, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    return-void
.end method
