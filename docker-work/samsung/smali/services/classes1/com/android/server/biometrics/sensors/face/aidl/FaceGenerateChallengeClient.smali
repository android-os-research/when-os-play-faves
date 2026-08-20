.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FaceGenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceGenerateChallengeClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method


# virtual methods
.method public onChallengeGenerated(IIJ)V
    .registers 8

    const-string v0, "FaceGenerateChallengeClient"

    const/4 v1, 0x0

    .line 74
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    if-nez v2, :cond_14

    const-string p1, "Listener is null in onChallengeGenerated"

    .line 76
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 80
    :cond_14
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 81
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception p1

    const-string p2, "Unable to send challenge"

    .line 83
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_29
    return-void
.end method

.method public startHalOperation()V
    .registers 7

    const-string v0, "FaceGenerateChallengeClient"

    .line 54
    :try_start_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 55
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonGenerateChallenge()V

    goto :goto_56

    .line 60
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "generateChallenge START"

    .line 61
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/biometrics/face/ISession;->generateChallenge()V

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateChallenge FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_56

    :catch_4a
    move-exception v1

    const-string v2, "Unable to generateChallenge"

    .line 67
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_56
    return-void
.end method
