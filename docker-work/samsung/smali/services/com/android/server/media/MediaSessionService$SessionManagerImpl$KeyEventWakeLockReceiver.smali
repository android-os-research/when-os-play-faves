.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventWakeLockReceiver"
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mLastTimeoutId:I

.field public mRefCount:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLastTimeoutId(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 2740
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2741
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2737
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    .line 2738
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    .line 2742
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public acquireWakeLockLocked()V
    .registers 4

    .line 2758
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    if-nez v0, :cond_f

    .line 2759
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2761
    :cond_f
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    .line 2762
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2763
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    .line 2774
    iget p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    if-ge p1, p2, :cond_5

    return-void

    .line 2779
    :cond_5
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2780
    :try_start_e
    iget p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    if-lez p2, :cond_1b

    add-int/lit8 p2, p2, -0x1

    .line 2781
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    if-nez p2, :cond_1b

    .line 2783
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->releaseWakeLockLocked()V

    .line 2786
    :cond_1b
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const/4 p1, 0x0

    .line 2798
    invoke-virtual {p0, p3, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTimeout()V
    .registers 3

    .line 2746
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2747
    :try_start_9
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    if-nez v1, :cond_f

    .line 2749
    monitor-exit v0

    return-void

    .line 2751
    :cond_f
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I

    const/4 v1, 0x0

    .line 2752
    iput v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mRefCount:I

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->releaseWakeLockLocked()V

    .line 2754
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final releaseWakeLockLocked()V
    .registers 2

    .line 2791
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaEventWakeLock(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2792
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 1

    .line 2769
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->onTimeout()V

    return-void
.end method
