.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:[B

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    iput-object p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$1;->$r8$lambda$i2TYjs5iM8xnR7KsCG-YEjKedNw(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V

    return-void
.end method
