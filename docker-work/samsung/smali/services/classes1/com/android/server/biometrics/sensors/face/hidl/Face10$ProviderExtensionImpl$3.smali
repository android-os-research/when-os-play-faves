.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;
.super Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public final synthetic val$this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 4

    .line 1639
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;->val$this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 1642
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 1643
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 1644
    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_29

    .line 1645
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1646
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$3;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1648
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PROXIMITY] onSensorChanged : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method
