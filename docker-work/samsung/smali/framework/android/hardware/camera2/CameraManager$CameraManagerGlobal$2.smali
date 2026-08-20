.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2116
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 1

    .line 2133
    return-void
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 2139
    return-void
.end method

.method public blacklist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .param p6, "userId"    # I

    .line 2143
    return-void
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2136
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2123
    return-void
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    return-void
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    return-void
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2130
    return-void
.end method
