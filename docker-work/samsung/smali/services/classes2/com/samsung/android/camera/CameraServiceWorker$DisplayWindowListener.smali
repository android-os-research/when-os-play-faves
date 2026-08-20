.class public final Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayWindowListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    .line 233
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DisplayWindowListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    .line 237
    :cond_9
    :try_start_9
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDeviceInjectorOrientationChange()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception p0

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_worker"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 2

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 3

    return-void
.end method

.method public onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
