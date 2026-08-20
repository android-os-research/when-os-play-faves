.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FingerprintAuthenticator.java"


# instance fields
.field public final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;I)V
    .registers 3

    .line 43
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 45
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public dumpSensorServiceStateProto(Z)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->dumpSensorServiceStateProto(IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public getAuthenticatorId(I)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLockoutModeForUser(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 70
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v0, v1

    move v1, v2

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(ILandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public semGetSecurityLevel()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSecurityLevel()I

    move-result p0

    return p0
.end method

.method public startPreparedClient(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(II)V

    return-void
.end method
