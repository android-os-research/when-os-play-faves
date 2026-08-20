.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->$r8$lambda$6kgVy4YtY0UVy2whuZ5cpQpidhA(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
