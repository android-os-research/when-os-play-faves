.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V
    .registers 4

    .line 543
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_1d

    .line 561
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$sensorId:I

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$userId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    .line 562
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$sensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$userId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInvalidationRequest(II)V

    :cond_1d
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 549
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;->val$sensorId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p0, :cond_1a

    .line 551
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchEnrollStartedEvent()V

    :cond_1a
    return-void
.end method
