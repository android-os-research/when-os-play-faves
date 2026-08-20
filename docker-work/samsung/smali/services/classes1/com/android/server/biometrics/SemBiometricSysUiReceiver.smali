.class public Lcom/android/server/biometrics/SemBiometricSysUiReceiver;
.super Ljava/lang/Object;
.source "SemBiometricSysUiReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# instance fields
.field public final mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiReceiver;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSysUiListener()Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-object p0
.end method

.method public onDeviceCredentialPressed()V
    .registers 2

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onDeviceCredentialPressed: No implementation"

    .line 67
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 2

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onDialogAnimatedIn: No implementation"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 3

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onTryAgainPressed: No implementation"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSysUiError(II)V
    .registers 3

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onSysUiError: No implementation"

    .line 91
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSystemEvent(I)V
    .registers 2

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onSystemEvent: No implementation"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTryAgainPressed()V
    .registers 2

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onTryAgainPressed: No implementation"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTryAgainPressed(I)V
    .registers 2

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onTryAgainPressed with reason: No implementation"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
