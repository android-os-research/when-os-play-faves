.class public Lcom/android/server/biometrics/sensors/face/SemFaceScheduler;
.super Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;
.source "SemFaceScheduler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 17
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;-><init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    return-void
.end method
