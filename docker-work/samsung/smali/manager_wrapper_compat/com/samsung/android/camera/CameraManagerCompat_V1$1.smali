.class Lcom/samsung/android/camera/CameraManagerCompat_V1$1;
.super Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
.source "CameraManagerCompat_V1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/CameraManagerCompat_V1;->createCallback(Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onClose()V

    .line 90
    return-void
.end method

.method public onError(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onError(I)V

    .line 85
    return-void
.end method

.method public onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onSessionCreated(Landroid/hardware/camera2/DeviceInjectorSession;)V
    .registers 3
    .param p1, "injectorSession"    # Landroid/hardware/camera2/DeviceInjectorSession;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/camera/CameraManagerCompat_V1$1;->val$callback:Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/CameraManagerCompat_V1$StatusCallback;->onSessionCreated(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
