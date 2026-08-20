.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaKeyListenerResultReceiver"
.end annotation


# instance fields
.field public final mAsSystemService:Z

.field public mHandled:Z

.field public final mKeyEvent:Landroid/view/KeyEvent;

.field public final mNeedWakeLock:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 10

    .line 2687
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2688
    iget-object v0, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2689
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2690
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    .line 2691
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    .line 2692
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    .line 2693
    iput-boolean p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    .line 2694
    iput-object p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2695
    iput-boolean p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method


# virtual methods
.method public final dispatchMediaKeyEvent()V
    .registers 10

    .line 2715
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2718
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 2719
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2720
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2721
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misGlobalPriorityActiveLocked(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2722
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$mdispatchMediaKeyEventLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_4d

    .line 2725
    :cond_38
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->-$$Nest$fgetmMediaKeyEventHandler(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mPid:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mUid:I

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mAsSystemService:Z

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mNeedWakeLock:Z

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2728
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 2707
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mHandled:Z

    .line 2708
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 2711
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    return-void
.end method

.method public run()V
    .registers 3

    .line 2700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The media key listener is timed-out for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;->dispatchMediaKeyEvent()V

    return-void
.end method
