.class public final Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcOperation;


# static fields
.field public static final MSG_TYPE_CMD:I = 0x0

.field public static final MSG_TYPE_MAP:I = 0x1

.field public static final MSG_TYPE_SYS_EVENT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CmdSvc"

.field public static final WAIT_TIME:J = 0x7d0L


# instance fields
.field public final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mClient:Landroid/os/Messenger;

.field public volatile mConnectedAtLeastOnce:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mReplyMessenger:Landroid/os/Messenger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetClient(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    .line 37
    new-instance v0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;-><init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    .line 65
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_26

    .line 66
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    .registers 5

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CmdSvc"

    const-string/jumbo v0, "wrong current thread"

    .line 72
    invoke-static {p1, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v2

    .line 76
    :cond_17
    new-instance v0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 p0, 0x7d0

    .line 77
    invoke-virtual {v0, p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->connect(J)Z

    move-result p0

    if-nez p0, :cond_28

    .line 78
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    goto :goto_29

    :cond_28
    move-object v2, v0

    :goto_29
    return-object v2
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method public command(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    const/4 v2, 0x0

    .line 136
    :try_start_8
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v3

    const-string/jumbo v4, "paramStrA0"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string/jumbo v3, "sysSvcVer"

    const/4 v4, 0x4

    .line 137
    invoke-virtual {p1, v3, v4}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p1

    .line 135
    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 139
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_29

    .line 140
    iput-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 142
    :cond_29
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2c} :catch_2e

    const/4 p0, 0x1

    goto :goto_33

    :catch_2e
    move-exception p0

    .line 145
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_32
    move p0, v1

    .line 148
    :goto_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "command "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CmdSvc"

    invoke-static {v1, p1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0
.end method

.method public final connect(J)Z
    .registers 9

    .line 87
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.friendscmder"

    const-string v3, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    const-string v4, "SYSTEM"

    .line 90
    invoke-static {v4}, Lcom/android/server/sepunion/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x1

    .line 87
    invoke-static {v0, v1, v2, v5, v4}, Lcom/android/server/sepunion/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 92
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_55

    .line 94
    new-instance p2, Landroid/os/Messenger;

    invoke-direct {p2, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_33} :catch_34

    goto :goto_55

    :catch_34
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_55

    .line 102
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to bind svc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "CmdSvc"

    invoke-static {v0, p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object p0

    if-eqz p0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v5, v1

    :goto_5d
    return v5
.end method

.method public final getClient()Landroid/os/Messenger;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 119
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public mappedAccessory([B[BZ)Z
    .registers 10

    .line 156
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    const/4 v3, 0x0

    .line 159
    :try_start_9
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string v4, "extraData"

    .line 160
    invoke-virtual {p1, v4, p2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string p2, "attached"

    .line 161
    invoke-virtual {p1, p2, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    const-string/jumbo p2, "sysSvcVer"

    const/4 p3, 0x4

    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p1

    .line 159
    invoke-static {v3, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_35

    .line 165
    iput-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 168
    :cond_35
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_38} :catch_39

    goto :goto_3e

    :catch_39
    move-exception p0

    .line 171
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_3d
    move v1, v2

    .line 174
    :goto_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mappedAccessory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "CmdSvc"

    invoke-static {p2, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1
.end method

.method public final setClient(Landroid/os/Messenger;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    .line 125
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public sysEvent(Landroid/os/Bundle;)Z
    .registers 6

    .line 181
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    :try_start_9
    const-string/jumbo v2, "sysSvcVer"

    const/4 v3, 0x4

    .line 184
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 185
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 186
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_1c

    .line 187
    iput-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 190
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_21

    const/4 p0, 0x1

    goto :goto_26

    :catch_21
    move-exception p0

    .line 193
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_25
    move p0, v1

    .line 196
    :goto_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sysEvent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CmdSvc"

    invoke-static {v1, p1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p0
.end method
