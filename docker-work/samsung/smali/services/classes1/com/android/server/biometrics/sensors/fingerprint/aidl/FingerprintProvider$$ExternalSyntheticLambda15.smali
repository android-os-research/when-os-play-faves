.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->$r8$lambda$PWSdcGHoQSTEDsWjEk4ByT4XDXs(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    return-void
.end method
