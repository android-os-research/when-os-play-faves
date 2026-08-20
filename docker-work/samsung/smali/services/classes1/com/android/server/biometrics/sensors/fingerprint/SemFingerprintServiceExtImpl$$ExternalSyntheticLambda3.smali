.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->$r8$lambda$dPQorLmwFYXYLOOKWCLGBp33WBA(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
