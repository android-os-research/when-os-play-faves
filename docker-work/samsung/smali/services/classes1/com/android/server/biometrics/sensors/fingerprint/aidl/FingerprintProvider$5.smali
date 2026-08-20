.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleAuthenticate$9(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V
    .registers 3

    .line 614
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->val$sensorId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 628
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 630
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->val$sensorId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p0, :cond_1a

    .line 632
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchAuthenticationStoppedEvent()V

    :cond_1a
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 619
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;->val$sensorId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p0, :cond_1a

    .line 621
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchAuthenticationStartedEvent()V

    :cond_1a
    return-void
.end method
