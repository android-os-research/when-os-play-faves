.class public final synthetic Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$1;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->$r8$lambda$Vy_ZypAhtdW8dZYE5-GrrIqjU_8(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V

    return-void
.end method
