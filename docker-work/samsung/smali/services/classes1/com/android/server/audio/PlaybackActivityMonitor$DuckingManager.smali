.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DuckingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    }
.end annotation


# instance fields
.field public final mDuckers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized checkDuck(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    monitor-enter p0

    .line 997
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    if-nez v0, :cond_15

    .line 999
    monitor-exit p0

    return-void

    :cond_15
    const/4 v1, 0x1

    .line 1001
    :try_start_16
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 1002
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized duckUid(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 975
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 976
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_1b
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 979
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    const/4 v1, 0x0

    .line 980
    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3e

    goto :goto_2b

    .line 982
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4

    monitor-enter p0

    .line 1005
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 1006
    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    goto :goto_b

    .line 1008
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    monitor-enter p0

    .line 1011
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 1014
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1a

    if-nez v0, :cond_15

    .line 1016
    monitor-exit p0

    return-void

    .line 1018
    :cond_15
    :try_start_15
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    .line 1019
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unduckUid(ILjava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 986
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    if-nez p1, :cond_11

    .line 988
    monitor-exit p0

    return-void

    .line 990
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeUnduckAll(Ljava/util/HashMap;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    .line 991
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method
