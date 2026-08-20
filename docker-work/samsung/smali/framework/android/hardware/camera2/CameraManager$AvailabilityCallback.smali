.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# instance fields
.field private blacklist mIsHiddenIdPermittedPackage:Z

.field private blacklist mIsRegisteredWhileServiceDown:Z

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsHiddenIdPermittedPackage:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsRegisteredWhileServiceDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHiddenIdPermittedPackage(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsHiddenIdPermittedPackage:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRegisteredWhileServiceDown(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsRegisteredWhileServiceDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPackageName(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCameraAccessPrioritiesChanged()V
    .registers 1

    .line 1451
    return-void
.end method

.method public whitelist onCameraAvailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1411
    return-void
.end method

.method public whitelist onCameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1532
    return-void
.end method

.method public whitelist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1516
    return-void
.end method

.method public whitelist onCameraUnavailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1426
    return-void
.end method

.method public whitelist onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1474
    return-void
.end method

.method public whitelist onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 1497
    return-void
.end method

.method public blacklist onSemCameraDeviceActive(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1565
    return-void
.end method

.method public blacklist onSemCameraDeviceClose(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1555
    return-void
.end method

.method public blacklist onSemCameraDeviceIdle(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1560
    return-void
.end method

.method public blacklist onSemCameraDeviceOpen(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "clientName"    # Ljava/lang/String;

    .line 1550
    return-void
.end method

.method public blacklist onSemCameraDeviceRawStatus(Ljava/lang/String;I)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "rawStatus"    # I

    .line 1570
    return-void
.end method
