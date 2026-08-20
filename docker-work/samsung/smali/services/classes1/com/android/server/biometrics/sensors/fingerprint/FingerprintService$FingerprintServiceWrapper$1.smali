.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field public final synthetic val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V
    .registers 5

    .line 450
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 3

    .line 488
    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownAcquiredCode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 489
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    goto :goto_1c

    .line 491
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x6

    invoke-interface {p0, v0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, "Remote exception in onAuthenticationAcquired()"

    .line 494
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3

    .line 454
    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownErrorCode(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 455
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    goto :goto_1d

    .line 457
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/16 p2, 0x8

    invoke-interface {p0, p2, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "Remote exception in onAuthenticationError()"

    .line 460
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "FingerprintService"

    const-string v1, "Remote exception in onAuthenticationFailed()"

    .line 481
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 6

    .line 467
    new-instance p1, Landroid/hardware/fingerprint/Fingerprint;

    const-string v0, ""

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 468
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    const/4 v1, 0x1

    .line 470
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    invoke-interface {v0, p1, p0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, "Remote exception in onAuthenticationSucceeded()"

    .line 472
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method
