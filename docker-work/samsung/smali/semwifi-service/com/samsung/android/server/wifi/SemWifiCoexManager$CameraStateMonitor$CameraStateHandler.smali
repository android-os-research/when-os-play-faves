.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
.super Landroid/os/Handler;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 374
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    .line 375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 380
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_28

    .line 389
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mcheckCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Ljava/lang/String;II)V

    goto :goto_28

    .line 386
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mhandleStop(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    goto :goto_28

    .line 383
    :cond_23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->this$1:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->-$$Nest$mhandleStart(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    :goto_28
    return-void
.end method
