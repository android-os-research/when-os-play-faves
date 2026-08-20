.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(IIFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$2:F

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$0:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$2:F

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;->f$3:F

    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->$r8$lambda$1ySRXjI7LQE7DJpwVOcGwiv8oEo(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
