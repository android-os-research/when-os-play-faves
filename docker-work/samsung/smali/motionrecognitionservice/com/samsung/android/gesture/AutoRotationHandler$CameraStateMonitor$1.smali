.class Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    .line 893
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 897
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;->this$1:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 899
    :cond_16
    return-void
.end method
