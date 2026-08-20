.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->$r8$lambda$3KZOGNX6Lmn79Cclnau63R4LAWk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method
