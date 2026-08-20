.class public Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
.super Ljava/lang/Object;
.source "LockoutResetDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientCallback"
.end annotation


# static fields
.field public static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpPackageName(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreleaseWakelock(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 57
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    const/4 p2, 0x1

    const-string p3, "LockoutResetMonitor:SendLockoutReset"

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final releaseWakelock()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    return-void
.end method

.method public sendLockoutReset(I)V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    if-eqz v0, :cond_21

    .line 66
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;-><init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->onLockoutReset(ILandroid/os/IRemoteCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception p1

    const-string v0, "LockoutResetTracker"

    const-string v1, "Failed to invoke onLockoutReset: "

    .line 74
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    :cond_21
    :goto_21
    return-void
.end method
