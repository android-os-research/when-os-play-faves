.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "BiometricTestSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(II)V
    .registers 3

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 4

    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .registers 5

    return-void
.end method

.method public onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3

    return-void
.end method

.method public onError(II)V
    .registers 3

    return-void
.end method

.method public onFingerprintDetected(IIZ)V
    .registers 4

    return-void
.end method

.method public onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3

    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .registers 2

    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .registers 2

    return-void
.end method
