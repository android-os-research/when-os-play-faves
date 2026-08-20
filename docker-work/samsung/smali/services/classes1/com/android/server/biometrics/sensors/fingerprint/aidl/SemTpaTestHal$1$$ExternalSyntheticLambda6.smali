.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$kQd8VAIm388vP6c7ATi6cNBdL1o(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V

    return-void
.end method
