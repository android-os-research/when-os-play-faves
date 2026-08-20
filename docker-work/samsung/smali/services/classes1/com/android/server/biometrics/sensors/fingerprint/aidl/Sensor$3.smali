.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .registers 2

    .line 909
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(I)V
    .registers 2

    .line 912
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 913
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmCurrentSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    :cond_21
    return-void
.end method
