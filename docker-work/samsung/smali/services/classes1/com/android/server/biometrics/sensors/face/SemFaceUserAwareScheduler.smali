.class public Lcom/android/server/biometrics/sensors/face/SemFaceUserAwareScheduler;
.super Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.source "SemFaceUserAwareScheduler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .registers 15

    .line 22
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "biometric"

    .line 26
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    .line 27
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V

    return-void
.end method
