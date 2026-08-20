.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "FingerprintResetLockoutClient.java"


# instance fields
.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V
    .registers 18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object/from16 v1, p7

    .line 42
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

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

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    .line 50
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
