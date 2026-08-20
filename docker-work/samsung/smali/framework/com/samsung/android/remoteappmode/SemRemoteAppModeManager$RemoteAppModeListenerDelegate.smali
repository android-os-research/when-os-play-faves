.class Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;
.super Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;
.source "SemRemoteAppModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteAppModeListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 778
    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 780
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .registers 2

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 803
    return-void
.end method

.method public blacklist onRemoteAppModeStateChanged(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 786
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    .line 787
    .local v1, "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_32

    .line 788
    if-eqz v1, :cond_31

    .line 789
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteAppModeStateChanged() isEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-interface {v1, p1}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;->onRemoteAppModeStateChanged(Z)V

    .line 792
    :cond_31
    return-void

    .line 787
    .end local v1    # "listener":Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 796
    invoke-static {}, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 797
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListenerDelegate;->mListener:Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager$RemoteAppModeListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 798
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
