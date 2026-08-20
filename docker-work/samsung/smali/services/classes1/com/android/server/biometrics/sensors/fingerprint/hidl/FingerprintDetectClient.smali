.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "FingerprintDetectClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintDetectClient"


# instance fields
.field public mIsPointerDown:Z

.field public final mIsStrongBiometric:Z

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Z)V
    .registers 27
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
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v8, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 66
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-wide/from16 v0, p4

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/SensorOverlays;

    const/4 v1, 0x0

    move-object/from16 v2, p12

    invoke-direct {v0, v2, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move/from16 v0, p13

    .line 70
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0xd

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isPointerDown()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    return p0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 11
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

    .line 133
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 145
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onDetected(IIZ)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception p1

    const-string p3, "FingerprintDetectClient"

    const-string v0, "Remote exception when sending onDetected"

    .line 147
    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    if-eqz p2, :cond_4e

    .line 154
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_51

    .line 156
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    :goto_51
    return-void
.end method

.method public onPointerDown(IIFF)V
    .registers 6

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    return-void
.end method

.method public onPointerUp()V
    .registers 2

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mIsPointerDown:Z

    .line 117
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

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 98
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1a

    goto :goto_35

    :catch_1a
    move-exception v0

    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when requesting auth"

    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_35
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 78
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_25

    :catch_13
    move-exception v0

    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_25
    return-void
.end method
