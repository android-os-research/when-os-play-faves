.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$mgIfGLAMJF4WVPRyfw1GSvzSmDY(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method
