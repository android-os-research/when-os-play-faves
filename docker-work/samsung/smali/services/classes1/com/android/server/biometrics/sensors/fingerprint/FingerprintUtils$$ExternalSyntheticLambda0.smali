.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;ILandroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->$r8$lambda$afbSPba48wMybvOJMAJFU2YnY-s(Landroid/content/Intent;ILandroid/content/Context;I)V

    return-void
.end method
