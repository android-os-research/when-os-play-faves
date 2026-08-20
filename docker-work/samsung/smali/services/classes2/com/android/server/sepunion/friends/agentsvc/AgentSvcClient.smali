.class public Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;


# static fields
.field public static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field public static final WAIT_TIME:J = 0x7d0L


# instance fields
.field public final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mConnectedAtLeastOnce:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mService:Landroid/os/IInterface;

.field public final mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetService(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    .line 34
    new-instance v0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    .line 68
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    const-string v1, "AgentSvcClient"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;->closeable()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    :cond_e
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "close - connection is remained"

    .line 145
    invoke-static {v1, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2a

    :cond_16
    :goto_16
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "close"

    .line 140
    invoke-static {v1, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 143
    iput-boolean v2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    :goto_2a
    return-void
.end method

.method public final closedForced()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 151
    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;->setContPreserved(Z)V

    .line 153
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->close()V

    return-void
.end method

.method public connect()Z
    .registers 8

    .line 73
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AgentSvcClient"

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 74
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "FSvc is already connected"

    .line 75
    invoke-static {v2, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1

    :cond_18
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Connection of FSvs is invalid"

    .line 78
    invoke-static {v2, v4, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->closedForced()V

    .line 82
    :cond_22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.mateagent"

    const-string v5, "com.samsung.android.mateagent.interact.AgentService"

    .line 83
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    const-string v6, "SYSTEM"

    .line 88
    invoke-static {v6}, Lcom/android/server/sepunion/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 87
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/server/sepunion/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 90
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_64

    const-string v0, "bound but binder is null"

    new-array v4, v3, [Ljava/lang/Object;

    .line 91
    invoke-static {v2, v0, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_57} :catch_58

    goto :goto_64

    :catch_58
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_5d
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "failed to bind FSvc"

    .line 98
    invoke-static {v2, v4, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    :cond_64
    :goto_64
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_75

    .line 102
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->closedForced()V

    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "not connected"

    .line 103
    invoke-static {v2, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :cond_75
    return v1
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mateservice/IAgentService;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AgentSvcClient"

    invoke-static {v3, v0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p0, :cond_32

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "executeSysAction is triggered"

    .line 161
    invoke-static {v3, v1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeSysAction(ILandroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 163
    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Landroid/os/IInterface;
    .registers 2

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isAlive()Z
    .registers 2

    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 120
    :goto_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_18

    if-eqz v0, :cond_16

    .line 121
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0

    :catchall_18
    move-exception v0

    .line 120
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final isConnected()Z
    .registers 2

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 113
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    .line 131
    monitor-enter p0

    .line 132
    :try_start_1
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    .line 133
    monitor-exit p0

    return-object p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
