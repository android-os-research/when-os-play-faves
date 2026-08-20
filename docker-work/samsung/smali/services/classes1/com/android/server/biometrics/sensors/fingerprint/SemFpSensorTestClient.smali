.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;
.source "SemFpSensorTestClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/Interruptable;
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/Interruptable;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintSensorTestClient"


# instance fields
.field public mAlreadyCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    const-string v8, "FingerprintSensorTestClient"

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 31
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;ZII[B[B)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_c

    const-string p0, "FingerprintSensorTestClient"

    const-string v0, "Cancel was already requested"

    .line 45
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->stopHalOperation()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->mAlreadyCancelled:Z

    return-void
.end method

.method public cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelWithoutStarting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintSensorTestClient"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->handleOnError()V

    return-void
.end method

.method public final handleOnError()V
    .registers 3

    const/16 v0, 0x2719

    .line 72
    invoke-super {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->onRequestResult(I)V

    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onError(II)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;->handleOnError()V

    return-void
.end method

.method public onRequestResult(I)V
    .registers 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->onRequestResult(I)V

    const/16 v0, 0x2719

    if-ne p1, v0, :cond_d

    .line 62
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_d
    return-void
.end method
