.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;
.super Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationChangedListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    .line 410
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .registers 2

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    .line 433
    return-void
.end method

.method public blacklist onRotationChanged(II)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    .line 417
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3c

    .line 418
    if-eqz v1, :cond_3b

    .line 419
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged() displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;->onRotationChanged(II)V

    .line 422
    :cond_3b
    return-void

    .line 417
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;
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

    .line 426
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 427
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RotationChangedListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 428
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
