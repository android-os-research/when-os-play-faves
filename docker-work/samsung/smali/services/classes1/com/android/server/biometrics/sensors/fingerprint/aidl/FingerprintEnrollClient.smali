.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;
.source "FingerprintEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient<",
        "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintEnrollClient"


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

.field public final mEnrollReason:I

.field public mIsPointerDown:Z

.field public mLazySehDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxTemplatesPerUser:I

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public static synthetic $r8$lambda$0C07pvvUsEtHbU7MzGZj-K2w2ho(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->lambda$onEnrollResult$0(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NytKE1aXy2LxuNPPJzI8Hf1mb9Y(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->lambda$onAcquired$2(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vsbIyTNnKWds3nTV_tnEZpDzW24(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->lambda$onAcquired$1(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wqHtJtfopnbMNo936EHWs0jhD90(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->lambda$doEnroll$3(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;II)V
    .registers 35
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
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "II)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move-object/from16 v1, p1

    move/from16 v13, p18

    .line 106
    invoke-static {v1, v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->shouldVibrateFor(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Z

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v10, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 105
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-wide/from16 v0, p4

    .line 108
    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 109
    iput-object v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 110
    new-instance v0, Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move/from16 v0, p17

    .line 111
    iput v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mMaxTemplatesPerUser:I

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    move/from16 v0, p18

    .line 115
    iput v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mEnrollReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->disableMetrics()V

    :cond_55
    return-void
.end method

.method public static synthetic lambda$doEnroll$3(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 3

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "FingerprintEnrollClient"

    const-string v0, "Unable to notify context changed"

    .line 210
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method private synthetic lambda$onAcquired$1(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V

    return-void
.end method

.method private synthetic lambda$onAcquired$2(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->isValidAcquisitionMessage(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 158
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

    .line 133
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onEnrollmentProgress(II)V

    return-void
.end method

.method public static shouldVibrateFor(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final doEnroll()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 199
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 200
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    .line 204
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;)V

    invoke-interface {p0, v2, v3}, Lcom/android/server/biometrics/log/BiometricContext;->subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    return-object v1

    .line 215
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public hasReachedEnrollmentLimit()Z
    .registers 4

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mMaxTemplatesPerUser:I

    if-lt v0, p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public isPointerDown()Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    return p0
.end method

.method public onAcquired(II)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onAcquired(II)V

    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 132
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V

    if-nez p2, :cond_18

    .line 136
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    :cond_18
    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onError(II)V

    .line 169
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 11

    const/4 v0, 0x1

    .line 242
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 247
    new-instance v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    const/4 v2, 0x0

    .line 248
    iput v2, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    int-to-float p1, p1

    .line 249
    iput p1, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    int-to-float p1, p2

    .line 250
    iput p1, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 251
    iput p3, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 252
    iput p4, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 253
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result p0

    iput-boolean p0, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->isAod:Z

    .line 254
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_51

    .line 256
    :cond_3c
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception p0

    const-string p1, "FingerprintEnrollClient"

    const-string p2, "Unable to send pointer down"

    .line 259
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    return-void
.end method

.method public onPointerUp()V
    .registers 3

    const/4 v0, 0x0

    .line 266
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mIsPointerDown:Z

    .line 267
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    invoke-virtual {v1}, Lcom/android/server/biometrics/log/CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/log/Probe;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/log/Probe;->disable()V

    .line 269
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 271
    new-instance v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 272
    iput v0, v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 273
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_37

    .line 275
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p0

    const-string v0, "FingerprintEnrollClient"

    const-string v1, "Unable to send pointer up"

    .line 278
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public onUiReady()V
    .registers 3

    .line 290
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

    const-string v0, "FingerprintEnrollClient"

    const-string v1, "Unable to send UI ready"

    .line 292
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public final request(II)V
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mLazySehDaemon:Ljava/util/function/Supplier;

    if-nez v0, :cond_5

    return-void

    .line 319
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mLazySehDaemon:Ljava/util/function/Supplier;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    .line 322
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 323
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    return-void
.end method

.method public sendPauseCommand()V
    .registers 2

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public sendResumeCommand()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public setEnrollType()V
    .registers 3

    .line 300
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    const/16 v1, 0x12

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->request(II)V

    return-void
.end method

.method public setLazySehFingerprint(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;",
            ">;)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mLazySehDaemon:Ljava/util/function/Supplier;

    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 182
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->startHalOperation()V

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mEnrollReason:I

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/EnrollClient;->getOverlayReasonFromEnrollReason(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelBadCalibrationNotification(Landroid/content/Context;)V

    .line 188
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->doEnroll()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_32

    :catch_20
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    .line 190
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onError(II)V

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_32
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 222
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->stopHalOperation()V

    .line 224
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_29

    .line 229
    :try_start_13
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_29

    :catch_17
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 231
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onError(II)V

    .line 234
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 124
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

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
