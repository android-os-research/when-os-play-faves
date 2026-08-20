.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;
.super Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.source "SemFpUserAwareScheduler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .registers 14

    .line 21
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    goto :goto_14

    :cond_13
    const/4 v0, 0x3

    :goto_14
    move v3, v0

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

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->reset()V

    return-void
.end method
