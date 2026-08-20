.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;
.super Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskChangeListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 240
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .registers 2

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 315
    return-void
.end method

.method public blacklist onRecentTaskListUpdated()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 297
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 298
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_17

    .line 299
    if-eqz v1, :cond_16

    .line 300
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onTaskStackUpdated()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-interface {v1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->onRecentTaskListUpdated()V

    .line 304
    :cond_16
    return-void

    .line 298
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist onTaskDisplayChanged(II)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 284
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 285
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3c

    .line 286
    if-eqz v1, :cond_3b

    .line 287
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskDisplayChanged() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->onTaskDisplayChanged(II)V

    .line 291
    :cond_3b
    return-void

    .line 285
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist onTaskPlayed(II)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 258
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 259
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3c

    .line 260
    if-eqz v1, :cond_3b

    .line 261
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskPlayed() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->onTaskPlayed(II)V

    .line 265
    :cond_3b
    return-void

    .line 259
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist onTaskRemoved(I)V
    .registers 6
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 246
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 247
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_32

    .line 248
    if-eqz v1, :cond_31

    .line 249
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskRemoved() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->onTaskRemoved(I)V

    .line 252
    :cond_31
    return-void

    .line 247
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist onTaskTriedToGoToBackground(II)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 271
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    .line 272
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3c

    .line 273
    if-eqz v1, :cond_3b

    .line 274
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskTriedToGoToBackground() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;->onTaskTriedToGoToBackground(II)V

    .line 278
    :cond_3b
    return-void

    .line 272
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 308
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 309
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$TaskChangeListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 310
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
