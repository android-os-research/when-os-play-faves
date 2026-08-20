.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;->$r8$lambda$UBzUSqC7VsTsYFezLG1j9YvyrDY(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient$1;Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
