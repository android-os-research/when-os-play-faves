.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;
.super Lcom/android/server/biometrics/sensors/StopUserClient;
.source "FaceStopUserClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/StopUserClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceStopUserClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 55
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 56
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonClose()V

    goto :goto_30

    .line 58
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_30

    :catch_20
    move-exception v0

    const-string v1, "FaceStopUserClient"

    const-string v2, "Remote exception"

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_30
    return-void
.end method

.method public unableToStart()V
    .registers 1

    return-void
.end method
