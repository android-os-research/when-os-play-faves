.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(I)V
    .registers 2

    .line 195
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    iget p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void
.end method
