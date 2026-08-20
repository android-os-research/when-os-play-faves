.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;
.super Lcom/android/server/biometrics/sensors/RevokeChallengeClient;
.source "FaceRevokeChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceRevokeChallengeClient"


# instance fields
.field public final mChallenge:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "J)V"
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/RevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 49
    iput-wide p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    return-void
.end method


# virtual methods
.method public onChallengeRevoked(IIJ)V
    .registers 5

    .line 75
    iget-wide p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 76
    :goto_9
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public startHalOperation()V
    .registers 7

    const-string v0, "FaceRevokeChallengeClient"

    .line 56
    :try_start_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 57
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRevokeChallenge(J)V

    goto :goto_5c

    .line 62
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "revokeChallenge START"

    .line 63
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    invoke-interface {v3, v4, v5}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revokeChallenge FINISH ("

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
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_5c

    :catch_50
    move-exception v1

    const-string v2, "Unable to revokeChallenge"

    .line 69
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_5c
    return-void
.end method
