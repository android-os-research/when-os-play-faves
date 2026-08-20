.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;J)V
.end method

.method public abstract containsSensor(I)Z
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics(ILjava/io/FileDescriptor;)V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getEnrolledFingerprints(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHardwareDetected(I)Z
.end method

.method public abstract onPointerDown(JIIIFF)V
.end method

.method public abstract onPointerUp(JI)V
.end method

.method public abstract onSemOnHandModeEnabled()V
.end method

.method public abstract onSemWirelessPowerEnabled()V
.end method

.method public abstract onUiReady(JI)V
.end method

.method public abstract rename(IIILjava/lang/String;)V
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
.end method

.method public abstract scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
.end method

.method public abstract scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 2

    return-void
.end method

.method public semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    return-void
.end method

.method public semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public semGetDaemonSdkVersion()Ljava/lang/String;
    .registers 1

    const-string p0, "Unknown"

    return-object p0
.end method

.method public semGetOpticalBrightnessConfigs()[Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract semGetSecurityLevel()I
.end method

.method public abstract semGetSensorId()I
.end method

.method public semGetSensorInfo(IZ)Ljava/lang/String;
    .registers 3

    const-string p0, "Unknown"

    return-object p0
.end method

.method public abstract semIsEnrollSession()Z
.end method

.method public abstract semNotifyTspBlockState(Z)V
.end method

.method public semOpenTzSession()V
    .registers 1

    return-void
.end method

.method public semProcessFidoCommand(II[B[B)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 2

    return-void
.end method

.method public semRemoveHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    return-void
.end method

.method public semRequest(II[B[B)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public semScheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZLandroid/os/Bundle;)J
    .registers 13

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public semScheduleSensorTest(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 6

    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 2

    return-void
.end method

.method public semSetTpaRequestCommandAction([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public semUpdateTpaAction()V
    .registers 1

    return-void
.end method

.method public abstract setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
.end method

.method public abstract setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
.end method

.method public abstract startPreparedClient(II)V
.end method
