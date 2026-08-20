.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->$r8$lambda$QWdg84Jgg-kfXXESyO1d-umL4HE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
