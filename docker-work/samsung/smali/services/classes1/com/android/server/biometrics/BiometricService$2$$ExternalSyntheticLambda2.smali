.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:I

    iput p5, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:I

    iget p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/BiometricService$2;->$r8$lambda$jmdcez1e2uDvDWO-eSoGAXzMyPE(Lcom/android/server/biometrics/BiometricService$2;JII)V

    return-void
.end method
