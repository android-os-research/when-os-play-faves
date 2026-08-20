.class public Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "RequestInjectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->tryRegisterCameraOpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 11

    .line 115
    iget-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Lcom/samsung/android/camera/CameraServiceWorker;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "RequestInjectorService"

    if-eqz p2, :cond_14

    const-string p0, "Samsung Camera is opened. ignore VT Camera Setting."

    .line 116
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const-string p2, "camera_open_id"

    const-string v1, "com.samsung.android.vtcamerasettings"

    const-string v2, "VT Camera Setting does not exist "

    const-string v3, "VT Camera Setting does not exist"

    if-eqz p3, :cond_6e

    const/4 p5, 0x3

    if-eq p3, p5, :cond_37

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Non acceptable state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 146
    :cond_37
    :try_start_37
    new-instance p3, Landroid/content/Intent;

    const-string p5, "intentfilter.samsung.vtcamerasetting.closecamera"

    invoke-direct {p3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "camera_close_package_name"

    .line 148
    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_54} :catch_55

    goto :goto_c6

    :catch_55
    move-exception p0

    .line 153
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    goto :goto_c6

    :cond_6e
    const/4 p3, 0x0

    .line 125
    :try_start_6f
    invoke-static {p4, p5}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(Ljava/lang/String;I)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    move-result-object p5

    if-eqz p5, :cond_77

    .line 127
    iget p3, p5, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 129
    :cond_77
    new-instance p5, Landroid/content/Intent;

    const-string v4, "intentfilter.samsung.vtcamerasetting.cameraobserver"

    invoke-direct {p5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "camera_open_package_name"

    .line 131
    invoke-virtual {p5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "display_id"

    .line 133
    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera is opened. Start VT Camera Setting. Display id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    invoke-static {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p5, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_ad
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_ad} :catch_ae

    goto :goto_c6

    :catch_ae
    move-exception p0

    .line 138
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_c6
    return-void
.end method
