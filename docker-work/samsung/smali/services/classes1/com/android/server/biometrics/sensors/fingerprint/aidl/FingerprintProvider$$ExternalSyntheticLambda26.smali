.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$2:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$2:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->$r8$lambda$FQVt6-b7B5HjgncvUTHDd-u4aXw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
