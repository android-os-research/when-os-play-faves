.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;
.super Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;
.source "SemFpScheduler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .registers 5

    .line 20
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x3

    .line 22
    :goto_7
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 19
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;-><init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    return-void
.end method
