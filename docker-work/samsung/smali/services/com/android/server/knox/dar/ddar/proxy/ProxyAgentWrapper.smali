.class public Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"


# static fields
.field public static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field public static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field public static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field public static final TAG:Ljava/lang/String; = "KnoxService::ProxyAgentWrapper"

.field public static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field public static final WAIT_TIME_MS:J = 0xbb8L


# instance fields
.field public mBindPending:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

.field public mIsNotify:Z

.field public mIsReconnection:Z

.field public mIsStale:Z

.field public mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field public mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNotify(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAgentReconnected(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->onAgentReconnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .registers 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 138
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string v2, "ProxyAgentWrapper()"

    .line 55
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 59
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    return-void
.end method


# virtual methods
.method public connectAsync()Z
    .registers 11

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectAsync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_d
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object v1, v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already bound"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_9f

    return v4

    .line 100
    :cond_3c
    :try_start_3c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 102
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v7, 0x4000001

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget v9, v9, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v3, :cond_7b

    const-string p0, "KnoxService::ProxyAgentWrapper"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t bind to container service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_79} :catch_7d
    .catchall {:try_start_3c .. :try_end_79} :catchall_9f

    .line 107
    :try_start_79
    monitor-exit v0

    return v2

    .line 110
    :cond_7b
    monitor-exit v0

    return v4

    :catch_7d
    move-exception p0

    const-string v1, "KnoxService::ProxyAgentWrapper"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    monitor-exit v0

    return v2

    :catchall_9f
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_79 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public connectSync()Z
    .registers 6

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectSync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :try_start_a
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_47

    .line 67
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_41

    .line 68
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v1, :cond_28

    .line 69
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v1

    if-nez v1, :cond_28

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string v3, "connection to Proxy Agent failed"

    new-array v4, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {p0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    monitor-exit v0

    return v1

    .line 75
    :cond_28
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 76
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 77
    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    if-nez p0, :cond_41

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "thread waken up without notify"

    new-array v3, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {p0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    monitor-exit v0

    return v2

    .line 82
    :cond_41
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    :try_start_46
    throw p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public disconnect()V
    .registers 5

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 120
    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 124
    :cond_11
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_14
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    .line 127
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 128
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2b

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string v0, "Unbinding to agent done"

    new-array v1, v2, [Ljava/lang/Object;

    .line 129
    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_2b
    move-exception p0

    .line 128
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public enableReconnectionFlag()V
    .registers 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableReconnectionFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return-void
.end method

.method public isBindPending()Z
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 268
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isBound()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public markStale()V
    .registers 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markStale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    return-void
.end method

.method public final onAgentReconnected()V
    .registers 6

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const/4 v1, 0x0

    .line 220
    :try_start_3
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "sending onAgentReconnected signal"

    new-array v3, v1, [Ljava/lang/Object;

    .line 221
    invoke-static {v0, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {v2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_3c

    :catch_15
    move-exception v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 226
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -- onAgentReconnected"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relay to Service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_a4

    const-string v0, "SECURE_CLIENT_ID"

    .line 236
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SECURE_CLIENT_PUB_KEY"

    .line 237
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    .line 239
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x25e9423d

    const/4 v7, 0x1

    if-eq v5, v6, :cond_45

    const v6, 0x2897d36c

    if-eq v5, v6, :cond_3b

    goto :goto_4e

    :cond_3b
    const-string v5, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v4, v7

    goto :goto_4e

    :cond_45
    const-string v5, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4b} :catch_7a

    if-eqz v5, :cond_4e

    move v4, v1

    :cond_4e
    :goto_4e
    const-string v5, "dual_dar_response"

    if-eqz v4, :cond_6a

    if-eq v4, v7, :cond_5b

    .line 251
    :try_start_54
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_79

    .line 246
    :cond_5b
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {p4, p1, p2, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 247
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 248
    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_78

    .line 241
    :cond_6a
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {p4, p1, p2, v0, v2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 243
    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_78} :catch_7a

    :goto_78
    move-object p0, p2

    :goto_79
    return-object p0

    :catch_7a
    move-exception p1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteException: name:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " command:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    .line 258
    invoke-static {v3, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_a4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final triggerRestart()V
    .registers 4

    .line 199
    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    const/4 v1, 0x0

    const-string v2, "KnoxService::ProxyAgentWrapper"

    if-nez v0, :cond_2f

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "triggerRestart"

    .line 200
    invoke-static {v2, v1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {v2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    :cond_2f
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "skipping triggerRestart because this is a stale object"

    .line 204
    invoke-static {v2, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_37
    return-void
.end method
