.class public final Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "IrisAuthenticator.java"


# instance fields
.field public final mIrisService:Landroid/hardware/iris/IIrisService;


# direct methods
.method public constructor <init>(Landroid/hardware/iris/IIrisService;I)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;->mIrisService:Landroid/hardware/iris/IIrisService;

    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public dumpSensorServiceStateProto(Z)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuthenticatorId(I)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getLockoutModeForUser(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 3

    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public semGetSecurityLevel()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public startPreparedClient(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
