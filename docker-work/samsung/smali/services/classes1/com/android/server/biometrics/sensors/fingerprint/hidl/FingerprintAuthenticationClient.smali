.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;
.source "FingerprintAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Biometrics/FingerprintAuthClient"


# instance fields
.field public final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation
.end field

.field public mIsPointerDown:Z

.field public final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .registers 45
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
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "Z",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move/from16 v15, p17

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move/from16 v18, p22

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 82
    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-wide/from16 v1, p4

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v1, p19

    .line 87
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 88
    new-instance v1, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v2, p20

    move-object/from16 v3, p21

    invoke-direct {v1, v2, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v1, p23

    .line 89
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    return-void
.end method


# virtual methods
.method public handleFailedAttempt(I)I
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->canIgnoreLockout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    .line 180
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result p0

    return p0
.end method

.method public handleLifecycleAfterAuth(Z)V
    .registers 3

    if-eqz p1, :cond_8

    .line 162
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_8
    return-void
.end method

.method public isPointerDown()Z
    .registers 1

    .line 268
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    return p0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    if-eqz p2, :cond_19

    const/4 p1, 0x4

    .line 122
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->resetFailedAttempts(I)V

    .line 124
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    goto :goto_5a

    :cond_19
    const/4 p1, 0x3

    .line 126
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 127
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 128
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p1

    if-eqz p1, :cond_5a

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fingerprint locked out, lockoutMode("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Biometrics/FingerprintAuthClient"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_48

    const/4 p1, 0x7

    goto :goto_4a

    :cond_48
    const/16 p1, 0x9

    .line 137
    :goto_4a
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    const/4 p2, 0x0

    .line 138
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    const/16 p2, 0x12

    if-ne p1, p2, :cond_e

    .line 149
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    .line 152
    :cond_e
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 6

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    .line 237
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 238
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 243
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception p0

    const-string p1, "Biometrics/FingerprintAuthClient"

    const-string p2, "Remote exception"

    .line 245
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-void
.end method

.method public onPointerUp()V
    .registers 3

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    const/4 v0, 0x3

    .line 253
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 254
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->disable()V

    .line 255
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 259
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string v0, "Biometrics/FingerprintAuthClient"

    const-string v1, "Remote exception"

    .line 261
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public onUiReady()V
    .registers 1

    return-void
.end method

.method public final resetFailedAttempts(I)V
    .registers 3

    .line 156
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 97
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x2

    .line 99
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    goto :goto_12

    :cond_f
    const/4 p1, 0x1

    .line 101
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    :goto_12
    return-void
.end method

.method public startHalOperation()V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getShowOverlayReason()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 188
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->updateAuthenticatorIdsIfInvalid()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception v0

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting auth"

    .line 193
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_3b
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 221
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->stopHalOperation()V

    .line 223
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 225
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

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 227
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_28
    return-void
.end method

.method public final updateAuthenticatorIdsIfInvalid()V
    .registers 8

    const-string v0, "Biometrics/FingerprintAuthClient"

    .line 202
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 207
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_7a

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v2

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "something wrong: update authenticatorId, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_5f} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_5f} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_5f} :catch_60

    goto :goto_7a

    :catch_60
    move-exception p0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAuthenticatorIdsIfInvalied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method

.method public wasUserDetected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 5

    .line 108
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
