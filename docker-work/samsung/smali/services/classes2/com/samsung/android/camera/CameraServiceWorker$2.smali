.class public Lcom/samsung/android/camera/CameraServiceWorker$2;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmLock(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "CameraService_worker"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fold state changed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fold state changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 409
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_41

    .line 410
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$2;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    if-nez p1, :cond_3b

    const-wide/16 v0, 0x0

    goto :goto_3d

    :cond_3b
    const-wide/16 v0, 0x6

    :goto_3d
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChange(J)V

    return-void

    :catchall_41
    move-exception p0

    .line 409
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public onTableModeChanged(Z)V
    .registers 2

    return-void
.end method
