.class public final Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FaceAuthenticator.java"


# instance fields
.field public final mFaceService:Landroid/hardware/face/IFaceService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 42
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

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

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

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

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->dumpSensorServiceStateProto(IZ)[B

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

    .line 107
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(II)J

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

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

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

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

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

    .line 90
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

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

    .line 96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 67
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v2, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v0, v1

    move v1, v2

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v0 .. v12}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    return-void
.end method

.method public semGetSecurityLevel()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/hardware/face/IFaceService;->semGetSecurityLevel(Z)I

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

    .line 74
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(II)V

    return-void
.end method
