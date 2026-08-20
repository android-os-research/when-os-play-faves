.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->$r8$lambda$gSxF1BNnUdJlNeI__lnSf_JzyRc(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method
