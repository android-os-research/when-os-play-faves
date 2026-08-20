.class public Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "TaskChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/TaskChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskChangeListenerInfo"
.end annotation


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/TaskChangeNotifier;Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;II)V
    .registers 6

    .line 302
    iput-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 303
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    .line 304
    iput-object p2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 309
    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    .line 312
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_a
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 318
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_47

    if-eqz v1, :cond_3c

    .line 321
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetlockObject(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$munregisterWatcherInternal(Lcom/android/server/remoteappmode/TaskChangeNotifier;)V

    .line 324
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    .line 325
    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw p0

    .line 328
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_47
    move-exception p0

    .line 318
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method
