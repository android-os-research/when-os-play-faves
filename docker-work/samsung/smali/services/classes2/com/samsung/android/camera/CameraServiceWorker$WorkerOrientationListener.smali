.class public final Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WorkerOrientationListener"
.end annotation


# instance fields
.field public mLatestOrientation:I

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;)V
    .registers 4

    .line 270
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 271
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_3b

    const/4 p2, 0x0

    .line 275
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 277
    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    goto :goto_3b

    .line 279
    :cond_1d
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_32

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2d

    .line 282
    iput p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    goto :goto_3b

    :cond_2d
    const/16 p1, 0x5a

    .line 291
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    goto :goto_3b

    :cond_32
    const/16 p1, 0xb4

    .line 288
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    goto :goto_3b

    :cond_37
    const/16 p1, 0x10e

    .line 285
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public getLatestOrientation()I
    .registers 1

    .line 299
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 304
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->roundOrientation(I)I

    move-result p1

    .line 306
    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    if-eq v0, p1, :cond_2e

    .line 307
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 309
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_13

    return-void

    .line 313
    :cond_13
    :try_start_13
    invoke-interface {p0}, Landroid/hardware/ICameraService;->notifyDeviceInjectorOrientationChange()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_2e

    :catch_17
    move-exception p0

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not notify cameraserver, remote exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraService_worker"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final roundOrientation(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x2d

    .line 326
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method
