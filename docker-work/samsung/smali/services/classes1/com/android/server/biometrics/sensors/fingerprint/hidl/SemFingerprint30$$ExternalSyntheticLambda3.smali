.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method
