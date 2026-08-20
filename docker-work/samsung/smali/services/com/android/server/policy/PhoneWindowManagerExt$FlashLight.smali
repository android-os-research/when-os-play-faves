.class public Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashLight"
.end annotation


# static fields
.field public static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5


# instance fields
.field public final FLASHLIGHT_STRENGTH:[I

.field public final FLASHLIGHT_VALUE:[I

.field public cameraId:Ljava/lang/String;

.field public cameraManager:Landroid/hardware/camera2/CameraManager;

.field public flashlightLevel:I

.field public isLowBattery:Z

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final torchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field public torchMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputtorchMode(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 3

    .line 3930
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3906
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 3907
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3908
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->isLowBattery:Z

    .line 3909
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchMode:Z

    .line 3910
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->flashlightLevel:I

    const/4 p1, 0x5

    new-array v0, p1, [I

    .line 3914
    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->FLASHLIGHT_STRENGTH:[I

    new-array p1, p1, [I

    .line 3922
    fill-array-data p1, :array_3a

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->FLASHLIGHT_VALUE:[I

    .line 3973
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 3931
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->initCameraManager()V

    return-void

    nop

    :array_2c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    :array_3a
    .array-data 4
        0x3e9
        0x3ea
        0x3ec
        0x3ee
        0x3f1
    .end array-data
.end method


# virtual methods
.method public final canLaunchTorchLight()Z
    .registers 3

    .line 4015
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string p0, "PhoneWindowManagerExt"

    const-string v0, "Can not handle torch. camera is running."

    .line 4016
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4019
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->isLowBattery:Z

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchMode:Z

    if-nez p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public final convertToFlashlightLevel(I)I
    .registers 5

    const/4 v0, 0x0

    .line 4006
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->FLASHLIGHT_VALUE:[I

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 4007
    aget v1, v1, v0

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4011
    :cond_e
    array-length p0, v1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final getCameraId()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 3957
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 3958
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    .line 3960
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 3961
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 3963
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v5, :cond_38

    .line 3965
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_38

    if-eqz v4, :cond_38

    .line 3966
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    return-object v3

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCameraManager()Landroid/hardware/camera2/CameraManager;
    .registers 3

    .line 3948
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_12

    .line 3949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 3952
    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public handleTorchKey()V
    .registers 7

    const-string v0, "Couldn\'t initialize: "

    const-string v1, "PhoneWindowManagerExt"

    .line 4026
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->canLaunchTorchLight()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    .line 4030
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 4031
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->initCameraManager()V

    .line 4035
    :cond_12
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light torchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 4038
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchMode:Z

    if-eqz v2, :cond_45

    .line 4039
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    goto :goto_7d

    .line 4041
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->FLASHLIGHT_STRENGTH:[I

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->flashlightLevel:I

    aget p0, v5, p0

    invoke-virtual {v2, v3, v4, p0}, Landroid/hardware/camera2/CameraManager;->semSetTorchMode(Ljava/lang/String;ZI)V
    :try_end_55
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12 .. :try_end_55} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_55} :catch_56

    goto :goto_7d

    :catch_56
    move-exception p0

    .line 4048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :catch_6a
    move-exception p0

    .line 4046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    return-void
.end method

.method public final initCameraManager()V
    .registers 4

    .line 3936
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    .line 3938
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    const-string v1, "PhoneWindowManagerExt"

    const-string v2, "Couldn\'t initialize."

    .line 3939
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3942
    :goto_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->cameraId:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 3943
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->torchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_23
    return-void
.end method

.method public setFlashlightValue(I)V
    .registers 2

    .line 3998
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->convertToFlashlightLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->flashlightLevel:I

    return-void
.end method

.method public setLowBattery(Z)V
    .registers 2

    .line 4002
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->isLowBattery:Z

    return-void
.end method
