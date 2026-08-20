.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;
.super Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopModeListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 94
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 117
    return-void
.end method

.method public blacklist onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 100
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 101
    .local v1, "listener":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_32

    .line 102
    if-eqz v1, :cond_31

    .line 103
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDesktopModeStateChanged() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 106
    :cond_31
    return-void

    .line 101
    .end local v1    # "listener":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;
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

    .line 110
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->mListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
