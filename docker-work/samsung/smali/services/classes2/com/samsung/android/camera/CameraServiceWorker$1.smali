.class public Lcom/samsung/android/camera/CameraServiceWorker$1;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


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

    .line 368
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(III)V
    .registers 10

    const-string p2, "CameraService_worker"

    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    const/4 p1, 0x1

    if-ne p3, p1, :cond_55

    .line 372
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_55

    :try_start_18
    const-string p1, "mFoldStateLatch E"

    .line 376
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "mDisplayStateListener onStart - can\'t wait for close camera is done for 500 millisec"

    .line 378
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_4a

    const-string p1, "mDisplayStateListener onStart - but device state does not changed yet. wait 500ms more"

    .line 380
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$1;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmFoldStateLatch(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_4a
    const-string p0, "mFoldStateLatch X"

    .line 384
    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string p0, "mDisplayStateListener onStart - getting interrupt during wait for close camera is done"

    .line 386
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void
.end method
