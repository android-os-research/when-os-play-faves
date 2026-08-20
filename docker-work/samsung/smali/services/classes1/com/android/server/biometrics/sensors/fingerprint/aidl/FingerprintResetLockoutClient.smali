.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FingerprintResetLockoutClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintResetLockoutClient"


# instance fields
.field public final mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "[B",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 60
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    move-object/from16 v0, p9

    .line 61
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    move-object/from16 v0, p10

    .line 62
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-void
.end method

.method public static resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 5

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 114
    invoke-virtual {p3, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onError(II)V
    .registers 4

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error during resetLockout: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintResetLockoutClient"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onLockoutCleared()V
    .registers 5

    .line 97
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->onLockoutCleared()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1e

    :catch_10
    move-exception v0

    const-string v1, "FingerprintResetLockoutClient"

    const-string v2, "Unable to reset lockout"

    .line 87
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1e
    return-void
.end method

.method public unableToStart()V
    .registers 1

    return-void
.end method
