.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$1:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;->f$2:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$Rk9KiYnUvuFeNHFNi9h67y-zWSQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method
