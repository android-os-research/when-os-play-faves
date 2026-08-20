.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->$r8$lambda$W-Bmvs6MOCri93O0BlSlm7X6Cfc(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V

    return-void
.end method
