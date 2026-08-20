.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;
.super Ljava/lang/Object;
.source "BiometricTestSessionImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->cleanupInternalState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    .line 221
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupFinished(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "BiometricTestSessionImpl"

    const-string p2, "Remote exception"

    .line 223
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/ITestSessionCallback;->onCleanupStarted(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "BiometricTestSessionImpl"

    const-string v0, "Remote exception"

    .line 213
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method
