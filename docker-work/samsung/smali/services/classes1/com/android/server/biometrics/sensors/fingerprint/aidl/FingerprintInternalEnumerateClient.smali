.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.source "FingerprintInternalEnumerateClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<",
        "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintInternalEnumerateClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct/range {p0 .. p10}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method


# virtual methods
.method public startHalOperation()V
    .registers 4

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->enumerateEnrollments()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_1c

    :catch_e
    move-exception v0

    const-string v1, "FingerprintInternalEnumerateClient"

    const-string v2, "Remote exception when requesting enumerate"

    .line 55
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1c
    return-void
.end method
