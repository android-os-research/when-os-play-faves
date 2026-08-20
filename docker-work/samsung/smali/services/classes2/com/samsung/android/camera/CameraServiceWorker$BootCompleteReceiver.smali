.class public Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 4

    .line 344
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraService_worker"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmVtCameraProviderObserver(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->tryRegisterContentObserver()V

    .line 357
    :try_start_2f
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmCameraServiceWorker(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/camera/ICameraServiceWorker;->pingForUpdate()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_4e

    :catch_39
    move-exception p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BootCompleteReceiver exception happen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_4e
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fputmBootCompleted(Lcom/samsung/android/camera/CameraServiceWorker;Z)V

    :cond_54
    return-void
.end method
