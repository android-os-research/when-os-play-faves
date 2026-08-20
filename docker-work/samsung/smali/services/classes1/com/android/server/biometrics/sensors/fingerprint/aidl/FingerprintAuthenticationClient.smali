.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;
.source "FingerprintAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient<",
        "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;",
        "Lcom/android/server/biometrics/sensors/LockoutConsumer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintAuthenticationClient"


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

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mIsPointerDown:Z

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public static synthetic $r8$lambda$emE9sShxSOxe1aafC14ix_ip3RA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->lambda$onAcquired$0(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8tSh8VP6H3ZMMcVyvLjbwMkcDA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->lambda$doAuthenticate$1(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutCache;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .registers 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
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
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "Z",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p19

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

    .line 89
    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-wide/from16 v1, p4

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v1, p19

    .line 96
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 97
    new-instance v2, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v3, p20

    move-object/from16 v4, p21

    invoke-direct {v2, v3, v4}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v2, p23

    .line 98
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 103
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    return-void
.end method

.method public static synthetic lambda$doAuthenticate$1(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 3

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "FingerprintAuthenticationClient"

    const-string v0, "Unable to notify context changed"

    .line 222
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method private synthetic lambda$onAcquired$0(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V

    return-void
.end method


# virtual methods
.method public final doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 214
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 215
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-interface {v2, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    .line 218
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    invoke-interface {p0, v1, v3}, Lcom/android/server/biometrics/log/BiometricContext;->subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    return-object v2

    .line 227
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public handleFailedAttempt(I)I
    .registers 3

    .line 361
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->canIgnoreLockout()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 365
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    .line 368
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result p0

    return p0
.end method

.method public handleLifecycleAfterAuth(Z)V
    .registers 3

    if-eqz p1, :cond_8

    .line 131
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_8
    return-void
.end method

.method public isPointerDown()Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    return p0
.end method

.method public onAcquired(II)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 5
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

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1c

    const/4 p2, 0x4

    .line 147
    iput p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 148
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 151
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    goto :goto_5c

    :cond_1c
    const/4 p2, 0x3

    .line 155
    iput p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 158
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p2

    if-eqz p2, :cond_5c

    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fingerprint locked out, lockoutMode("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FingerprintAuthenticationClient"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p1, :cond_4a

    const/4 p1, 0x7

    goto :goto_4c

    :cond_4a
    const/16 p1, 0x9

    .line 168
    :goto_4c
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 187
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    const/16 p2, 0x12

    if-ne p1, p2, :cond_e

    .line 190
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    .line 193
    :cond_e
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    return-void
.end method

.method public onLockoutPermanent()V
    .registers 10

    .line 341
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutPermanent()V

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v5

    .line 346
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    const/16 v6, 0x9

    const/4 v7, 0x0

    .line 345
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    const/4 v0, 0x0

    .line 349
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception v1

    const-string v2, "FingerprintAuthenticationClient"

    const-string v3, "Remote exception"

    .line 351
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    :goto_3e
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 355
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 10

    .line 322
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutTimed(J)V

    .line 323
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 326
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v3

    .line 327
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    const/4 p1, 0x0

    .line 330
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception p2

    const-string v0, "FingerprintAuthenticationClient"

    const-string v1, "Remote exception"

    .line 332
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :goto_3c
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 336
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 11

    const/4 v0, 0x1

    .line 256
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    .line 257
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 261
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 262
    new-instance v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    const/4 v2, 0x0

    .line 263
    iput v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    int-to-float p1, p1

    .line 264
    iput p1, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    int-to-float p1, p2

    .line 265
    iput p1, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 266
    iput p3, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 267
    iput p4, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 268
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result p1

    iput-boolean p1, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 269
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_4a

    .line 271
    :cond_3e
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    .line 274
    :goto_4a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 275
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p0

    const-string p1, "FingerprintAuthenticationClient"

    const-string p2, "Remote exception"

    .line 278
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    :goto_64
    return-void
.end method

.method public onPointerUp()V
    .registers 4

    const/4 v0, 0x0

    .line 285
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    const/4 v1, 0x3

    .line 286
    iput v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 287
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/log/Probe;->disable()V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 290
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 291
    new-instance v2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 292
    iput v0, v2, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 293
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_31

    .line 295
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    .line 298
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 299
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception p0

    const-string v0, "FingerprintAuthenticationClient"

    const-string v1, "Remote exception"

    .line 302
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onUiReady()V
    .registers 3

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string v0, "FingerprintAuthenticationClient"

    const-string v1, "Remote exception"

    .line 316
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 113
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x2

    .line 115
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    goto :goto_12

    :cond_f
    const/4 p1, 0x1

    .line 117
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    :goto_12
    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getShowOverlayReason()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 201
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string v2, "Remote exception"

    .line 203
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->onError(II)V

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_2f
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 234
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->stopHalOperation()V

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const-string v1, "FingerprintAuthenticationClient"

    if-eqz v0, :cond_2a

    .line 241
    :try_start_15
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_2f

    :catch_19
    move-exception v0

    const-string v2, "Remote exception"

    .line 243
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->onError(II)V

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_2f

    :cond_2a
    const-string p0, "cancellation signal was null"

    .line 249
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public wasUserDetected()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 124
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
