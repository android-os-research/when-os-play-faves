.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$semScheduleAuthenticate$19(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 2

    .line 1396
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 1405
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 1406
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchAuthenticationStoppedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 1399
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 1400
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$mdispatchAuthenticationStartedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    return-void
.end method
