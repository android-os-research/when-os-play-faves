.class public Lcom/samsung/android/camera/DeviceInjectorSessionCompat_V1;
.super Ljava/lang/Object;
.source "DeviceInjectorSessionCompat_V1.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static close(Ljava/lang/Object;)V
    .registers 4
    .param p0, "sessionObject"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p0, Landroid/hardware/camera2/DeviceInjectorSession;

    if-eqz v0, :cond_b

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/hardware/camera2/DeviceInjectorSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/DeviceInjectorSession;->close()V

    .line 32
    return-void

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type of session object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDeviceInjectorPending(Ljava/lang/Object;Z)V
    .registers 5
    .param p0, "sessionObject"    # Ljava/lang/Object;
    .param p1, "pending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 35
    instance-of v0, p0, Landroid/hardware/camera2/DeviceInjectorSession;

    if-eqz v0, :cond_b

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/hardware/camera2/DeviceInjectorSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession;->setDeviceInjectorPending(Z)V

    .line 40
    return-void

    .line 38
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type of session object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
