.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;
.super Ljava/lang/Object;
.source "SemWifiCoexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
    }
.end annotation


# static fields
.field private static final MSG_CAMERA_CHANGED:I = 0x3

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field private mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->checkCameraRunning(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStart(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->handleStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStop(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->handleStop()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 317
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 304
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 305
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    .line 307
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    const-string p1, "camera"

    .line 318
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 319
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    return-void
.end method

.method private checkCameraRunning(Ljava/lang/String;II)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "SemWifiCoexManager"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1a

    .line 348
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 349
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_3c

    const-string p3, "CAMERA_STATE_OPEN"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_1a
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3c

    .line 351
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 352
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 353
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 354
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    .line 355
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_3c

    const-string p3, "CAMERA_STATE_CLOSED"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3c
    :goto_3c
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    move-result p3

    if-eqz p3, :cond_7d

    if-ne p2, v0, :cond_61

    .line 360
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_51

    const-string p2, "CAMERA_FACING_FRONT"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 362
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 363
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    goto :goto_7d

    :cond_61
    if-nez p2, :cond_7d

    .line 365
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_6e

    const-string p2, "CAMERA_FACING_BACK"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_6e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 367
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 368
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)Z

    :cond_7d
    :goto_7d
    return-void
.end method

.method private handleStart()V
    .registers 4

    const-string v0, "SemWifiCoexManager"

    .line 327
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 329
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    invoke-virtual {v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_45

    :catch_12
    move-exception p0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception occurred while starting CameraStateMonitor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :catch_2c
    move-exception p0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occurred while starting CameraStateMonitor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method private handleStop()V
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$CameraStateMonitor$CameraStateHandler;->sendEmptyMessage(I)Z

    return-void
.end method
