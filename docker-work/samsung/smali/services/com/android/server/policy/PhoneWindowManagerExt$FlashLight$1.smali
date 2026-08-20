.class public Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)V
    .registers 2

    .line 3974
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 5

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTorchModeChanged oldCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    return-void

    .line 3991
    :cond_3a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 3992
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fputtorchMode(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;Z)V

    :cond_4b
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 4

    .line 3977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTorchModeUnavailable oldCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fgetcameraId(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 3980
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight$1;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;->-$$Nest$fputtorchMode(Lcom/android/server/policy/PhoneWindowManagerExt$FlashLight;Z)V

    :cond_43
    return-void
.end method
