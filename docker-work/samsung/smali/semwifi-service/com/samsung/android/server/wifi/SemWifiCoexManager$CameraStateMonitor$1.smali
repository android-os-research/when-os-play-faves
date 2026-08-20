.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceStateChanged:  cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "SemWifiCoexManager"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    move-result-object p4

    if-eqz p4, :cond_44

    .line 312
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    move-result-object p0

    const/4 p4, 0x3

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_44
    return-void
.end method
