.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayMonitorClient"
.end annotation


# static fields
.field public static final MAX_ERRORS:I = 0x5

.field public static sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;


# instance fields
.field public final mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

.field public mErrorCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mIsPrivileged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mIsReleased:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDispatcherCb(Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;)Landroid/media/IPlaybackConfigDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .registers 4

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z

    .line 888
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const-string v0, ""

    .line 964
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mPackageName:Ljava/lang/String;

    .line 892
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 893
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "AudioService.PlaybackActivityMonitor"

    const-string v1, "client died"

    .line 898
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    return-void
.end method

.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 923
    monitor-enter p0

    .line 924
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z

    if-eqz v0, :cond_7

    .line 926
    monitor-exit p0

    return-void

    .line 928
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3b

    .line 930
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0, p1, p2}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_37

    :catch_e
    move-exception p1

    .line 932
    monitor-enter p0

    .line 933
    :try_start_10
    iget p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const-string p2, "AudioService.PlaybackActivityMonitor"

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") trying to dispatch playback config change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    monitor-exit p0

    :goto_37
    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw p1

    :catchall_3b
    move-exception p1

    .line 928
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public declared-synchronized equalsDispatcher(Landroid/media/IPlaybackConfigDispatcher;)Z
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 950
    monitor-exit p0

    return p1

    .line 952
    :cond_6
    :try_start_6
    invoke-interface {p1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    monitor-exit p0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPackageName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 957
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mPackageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()Z
    .registers 5

    monitor-enter p0

    .line 903
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 905
    monitor-exit p0

    return v1

    .line 908
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_14
    .catchall {:try_start_8 .. :try_end_11} :catchall_1e

    const/4 v0, 0x1

    .line 909
    monitor-exit p0

    return v0

    :catch_14
    move-exception v0

    :try_start_15
    const-string v2, "AudioService.PlaybackActivityMonitor"

    const-string v3, "Could not link to client death"

    .line 911
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 912
    monitor-exit p0

    return v1

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPrivileged()Z
    .registers 2

    monitor-enter p0

    .line 941
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reachedMaxErrorCount()Z
    .registers 3

    monitor-enter p0

    .line 945
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x5

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 917
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsReleased:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 919
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPackageName(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 961
    :try_start_1
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mPackageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 962
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
