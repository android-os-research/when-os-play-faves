.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$3:I

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda11;->f$4:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->$r8$lambda$F4sh1TIOujhCma8g4DJNtJmp78Y(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILandroid/os/Bundle;)V

    return-void
.end method
