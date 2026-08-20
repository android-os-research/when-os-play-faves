.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final synthetic f$1:Landroid/hardware/biometrics/IBiometricStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/IBiometricStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/IBiometricStateListener;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->$r8$lambda$IdAV0IED1Uvcw3bHe3fU98oqVOM(Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method
