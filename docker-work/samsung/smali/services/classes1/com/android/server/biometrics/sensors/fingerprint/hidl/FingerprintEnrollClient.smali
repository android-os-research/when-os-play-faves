.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;
.source "FingerprintEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintEnrollClient"


# instance fields
.field public final mEnrollReason:I

.field public mIsPointerDown:Z

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;


# direct methods
.method public static synthetic $r8$lambda$CBYQnZh3mhGFiIXGkhsCJp5vEeM(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->lambda$onAcquired$1(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PF091xg443h8wUXT_q66jD8DssE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->lambda$onEnrollResult$0(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "I)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p17

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    .line 79
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-wide/from16 v0, p4

    .line 82
    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 83
    new-instance v0, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 85
    iput v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    const/4 v0, 0x1

    if-ne v15, v0, :cond_3e

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->disableMetrics()V

    :cond_3e
    return-void
.end method

.method private synthetic lambda$onAcquired$1(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->isValidAcquisitionMessage(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-interface {p3, p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentHelp(I)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$onEnrollResult$0(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V

    return-void
.end method


# virtual methods
.method public hasReachedEnrollmentLimit()Z
    .registers 1

    .line 101
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->hasReachedEnrollmentLimit()Z

    move-result p0

    return p0
.end method

.method public isPointerDown()Z
    .registers 1

    .line 196
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    return p0
.end method

.method public onAcquired(II)V
    .registers 5

    .line 166
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onAcquired(II)V

    .line 168
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4

    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 156
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    if-nez p2, :cond_18

    .line 160
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    :cond_18
    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onError(II)V

    .line 179
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 6

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    return-void
.end method

.method public onPointerUp()V
    .registers 2

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    return-void
.end method

.method public onUiReady()V
    .registers 1

    return-void
.end method

.method public final request(II)V
    .registers 7

    .line 224
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 225
    instance-of v0, v0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_2c

    .line 226
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    .line 227
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    .line 229
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    :cond_2c
    return-void
.end method

.method public sendPauseCommand()V
    .registers 2

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public sendResumeCommand()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public setEnrollType()V
    .registers 3

    .line 208
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    const/16 v1, 0x12

    .line 207
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public startHalOperation()V
    .registers 5

    .line 119
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->startHalOperation()V

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/EnrollClient;->getOverlayReasonFromEnrollReason(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelBadCalibrationNotification(Landroid/content/Context;)V

    .line 126
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    .line 128
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_46
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 139
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->stopHalOperation()V

    .line 141
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 143
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_28

    :catch_16
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 145
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_28
    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 94
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
