.class public Lcom/android/server/remoteappmode/TaskChangeNotifier;
.super Ljava/lang/Object;
.source "TaskChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;
    }
.end annotation


# static fields
.field public static final NAME_LIMIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "TaskChangeNotifier"


# instance fields
.field public final lockObject:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public final mTaskChangeListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTaskChangeListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

.field public mTaskWatcherThread:Lcom/android/server/ServiceThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lockObject"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetlockObject(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$munregisterWatcherInternal(Lcom/android/server/remoteappmode/TaskChangeNotifier;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getTaskInfo(Landroid/content/Context;I)Landroid/app/TaskInfo;
    .registers 4

    const-string v0, "activity"

    .line 287
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 288
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 290
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 291
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, p1, :cond_15

    return-object v0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public deinitTaskWatcherThread()V
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_2d

    .line 144
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 145
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_2d

    :catchall_10
    move-exception p0

    goto :goto_39

    :catch_12
    move-exception v1

    :try_start_13
    const-string v2, "TaskChangeNotifier"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " unregisterTaskChangeListener: SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    const-string p0, "TaskChangeNotifier"

    const-string v1, " deinitTaskWatcherThread : mTaskWatcherThread = null"

    .line 152
    invoke-static {p0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_10

    throw p0
.end method

.method public initTaskWatcherThread(Z)V
    .registers 6

    .line 45
    iget-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 46
    :try_start_3
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_2f

    .line 49
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "remoteapp_taskwatcher"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "TaskChangeNotifier"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTaskWatcherThread start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2f
    monitor-exit p1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final linkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z
    .registers 13

    .line 123
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 124
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_32

    const/4 v2, 0x0

    .line 126
    :try_start_8
    new-instance v9, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_16

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;-><init>(Lcom/android/server/remoteappmode/TaskChangeNotifier;Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;II)V

    .line 130
    invoke-interface {v1, v9, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 131
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2d} :catch_30
    .catchall {:try_start_8 .. :try_end_2d} :catchall_32

    const/4 p0, 0x1

    .line 132
    :try_start_2e
    monitor-exit v0

    return p0

    .line 134
    :catch_30
    monitor-exit v0

    return v2

    :catchall_32
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw p0
.end method

.method public notifyTaskMoved(II)V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 237
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 240
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 242
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskDisplayChanged(II)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 244
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 238
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public notifyTaskPlayed(I)V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 180
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_36

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 185
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->getTaskInfo(Landroid/content/Context;I)Landroid/app/TaskInfo;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2a

    .line 188
    iget v3, v2, Landroid/app/TaskInfo;->displayId:I

    .line 191
    :cond_2a
    iget-object v1, v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v1, p1, v3}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskPlayed(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_13

    :catch_30
    move-exception v1

    .line 193
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_35
    return-void

    :catchall_36
    move-exception p0

    .line 181
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public notifyTaskRemoved(I)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 201
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 206
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskRemoved(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 208
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 202
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public notifyTaskStackUpdated()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 252
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 257
    :try_start_1f
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onRecentTaskListUpdated()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    .line 259
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 253
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public notifyTaskTryGoToBackground(I)V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 216
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_36

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    .line 221
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->getTaskInfo(Landroid/content/Context;I)Landroid/app/TaskInfo;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2a

    .line 224
    iget v3, v2, Landroid/app/TaskInfo;->displayId:I

    .line 227
    :cond_2a
    iget-object v1, v1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v1, p1, v3}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskTriedToGoToBackground(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_13

    :catch_30
    move-exception v1

    .line 229
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_35
    return-void

    :catchall_36
    move-exception p0

    .line 217
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;Z)Z
    .registers 7

    .line 82
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    .line 87
    invoke-virtual {p0, p3}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->initTaskWatcherThread(Z)V

    .line 89
    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    if-eqz p3, :cond_24

    const/4 p3, 0x1

    .line 92
    invoke-virtual {v1, p3}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->setNeedToNotifyTaskDisplayChanged(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v1, p3}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->setNeedToNotifyRecentTaskListUpdated(Z)V

    .line 97
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->registerWatcherToActivityManager()V

    .line 99
    iget-object p3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {p3, p0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->registerTaskChangeNotifier(Lcom/android/server/remoteappmode/TaskChangeNotifier;)V

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->linkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_32
    move-exception p0

    .line 102
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final registerWatcherToActivityManager()V
    .registers 4

    const-string v0, "TaskChangeNotifier"

    .line 59
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerWatcherToActivityManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-interface {v1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_56

    :catch_23
    move-exception p0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerTaskWatcher: SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_3d
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerTaskWatcher: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public releaseAllListeners()V
    .registers 6

    const-string v0, "TaskChangeNotifier"

    const-string/jumbo v1, "releaseAllListeners"

    .line 265
    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 268
    :try_start_b
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_4c

    .line 270
    :try_start_21
    iget-object v3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_32} :catch_33
    .catchall {:try_start_21 .. :try_end_32} :catchall_4c

    goto :goto_15

    :catch_33
    move-exception v2

    .line 272
    :try_start_34
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_15

    .line 276
    :cond_38
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 277
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_4c

    .line 279
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    .line 283
    monitor-exit v1

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 277
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public final unlinkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 170
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 171
    monitor-exit v0

    return p0

    .line 173
    :cond_1e
    monitor-exit v0

    return p1

    :catchall_20
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unlinkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 163
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final unregisterWatcherFromActivityManager()V
    .registers 4

    const-string v0, "TaskChangeNotifier"

    .line 71
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterWatcherFromActivityManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-interface {v1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_56

    :catch_23
    move-exception p0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unregisterTaskWatcher: SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_3d
    move-exception p0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unregisterTaskWatcher: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public final unregisterWatcherInternal()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    if-eqz v0, :cond_1c

    .line 108
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherFromActivityManager()V

    .line 111
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->unregisterTaskChangeNotifier()V

    .line 114
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->clearMessages()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    const-string p0, "TaskChangeNotifier"

    const-string/jumbo v0, "unregisterWatcherInternal : mTaskWatcher = null"

    .line 118
    invoke-static {p0, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method
