.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;


# direct methods
.method public static synthetic $r8$lambda$QWdg84Jgg-kfXXESyO1d-umL4HE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 956
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IZ)V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 950
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_19

    .line 954
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 943
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchEnrollStartedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    return-void
.end method
