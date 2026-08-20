.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->$r8$lambda$Uhb-3VcyRaKoBQS2rx3cI5R2d1k(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    return-void
.end method
