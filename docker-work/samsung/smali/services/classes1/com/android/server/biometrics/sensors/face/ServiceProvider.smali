.class public interface abstract Lcom/android/server/biometrics/sensors/face/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# virtual methods
.method public abstract cancelAuthentication(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelEnrollment(ILandroid/os/IBinder;J)V
.end method

.method public abstract cancelFaceDetect(ILandroid/os/IBinder;J)V
.end method

.method public abstract containsSensor(I)Z
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method public abstract dumpInternal(ILjava/io/PrintWriter;)V
.end method

.method public abstract dumpProtoMetrics(ILjava/io/FileDescriptor;)V
.end method

.method public abstract dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
.end method

.method public abstract getAuthenticatorId(II)J
.end method

.method public abstract getEnrolledFaces(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockoutModeForUser(II)I
.end method

.method public abstract getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
.end method

.method public abstract getSensorProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHardwareDetected(I)Z
.end method

.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J
.end method

.method public abstract scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
.end method

.method public abstract scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
.end method

.method public abstract scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 4

    .line 84
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Providers that support invalidation must override this method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
.end method

.method public abstract scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public semGetSecurityLevel(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public semGetTrustAppVersion()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public semIsSessionClose()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public semPauseAuth()V
    .registers 1

    return-void
.end method

.method public semPauseEnroll()V
    .registers 1

    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public semResumeAuth()V
    .registers 1

    return-void
.end method

.method public semResumeEnroll()V
    .registers 1

    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public semSessionClose()V
    .registers 1

    return-void
.end method

.method public semSessionOpen()V
    .registers 1

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 2

    return-void
.end method

.method public semShouldRemoveTemplate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public semUpdateTpaAction()V
    .registers 1

    return-void
.end method

.method public abstract startPreparedClient(II)V
.end method
