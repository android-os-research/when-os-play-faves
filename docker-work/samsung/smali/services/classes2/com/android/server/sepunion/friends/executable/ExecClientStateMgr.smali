.class public Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;
.super Ljava/lang/Object;
.source "ExecClientStateMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;
.implements Lcom/android/server/sepunion/friends/common/Dump;


# static fields
.field public static final CMD_CLEAR_CLIENT_STATE:I = 0x3

.field public static final CMD_REMOVE_CLIENT_STATE:I = 0x2

.field public static final CMD_RESTORE_CLIENT_STATE:I = 0x1

.field public static final CMD_SAVE_CLIENT_STATE:I


# instance fields
.field public final mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final commandClearClientState()Landroid/os/Bundle;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 76
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 p0, 0x1

    .line 78
    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_f
    move-exception p0

    .line 76
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 p0, 0x1

    .line 70
    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_f
    move-exception p0

    .line 68
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    const/4 p0, 0x1

    .line 56
    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catchall_f
    move-exception p0

    .line 54
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 5

    const/4 p2, 0x0

    if-nez p1, :cond_4

    return-object p2

    :cond_4
    const/4 p3, -0x1

    const-string v0, "clientStateAction"

    .line 29
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const-string/jumbo v0, "stateId"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2d

    const/4 p1, 0x1

    if-eq p3, p1, :cond_28

    const/4 p1, 0x2

    if-eq p3, p1, :cond_23

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1e

    return-object p2

    .line 44
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandClearClientState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 41
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 38
    :cond_28
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2d
    const-string p2, "clientStateBundle"

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "\n---- client state\n"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 85
    :try_start_8
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_21

    goto :goto_12

    .line 90
    :cond_21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 93
    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw p0
.end method
