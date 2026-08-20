.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$1:J

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$2:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$1:J

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;->f$2:Landroid/os/CancellationSignal;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$vXwNFCIlN3Sv-R-wSNxyb9qvR6c(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V

    return-void
.end method
