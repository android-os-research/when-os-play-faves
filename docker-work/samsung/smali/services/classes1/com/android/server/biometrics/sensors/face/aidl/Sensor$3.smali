.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .registers 2

    .line 793
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(I)V
    .registers 2

    .line 796
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void
.end method
