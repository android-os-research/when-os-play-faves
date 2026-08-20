.class public Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final RETRY_COUNT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field public final mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

.field public final mCompName:Landroid/content/ComponentName;

.field public mContPreserved:Z

.field public final mContext:Landroid/content/Context;

.field public volatile mEnabled:Z

.field public final mLockCont:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field public mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/common/Logger;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    .line 32
    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 33
    iput-object p2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    .line 34
    new-instance p2, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-direct {p2, p1, p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object p2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.samsung.android.mateagent"

    const-string v0, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final changeRefCount(Z)I
    .registers 2

    .line 155
    monitor-enter p0

    if-eqz p1, :cond_a

    .line 157
    :try_start_3
    iget p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    goto :goto_12

    .line 158
    :cond_a
    iget p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez p1, :cond_12

    add-int/lit8 p1, p1, -0x1

    .line 159
    iput p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 161
    :cond_12
    :goto_12
    iget p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 162
    monitor-exit p0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public closeable()Z
    .registers 7

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    move-result v1

    .line 130
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "AgentSvcMgr"

    const-string v5, "closeable %d %s"

    invoke-static {v3, v5, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v1, :cond_25

    if-nez p0, :cond_25

    move v0, v4

    :cond_25
    return v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 4

    if-eqz p1, :cond_19

    const/4 p2, 0x0

    const-string p3, "keepConnectionState"

    .line 116
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    if-nez p1, :cond_19

    .line 119
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getRefCount()I

    move-result p1

    if-nez p1, :cond_19

    .line 120
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->close()V

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final existAgentSvc()Z
    .registers 4

    const/4 v0, 0x0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v2, 0x10000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :catch_13
    move-exception p0

    .line 59
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 60
    :cond_20
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_23
    return v0
.end method

.method public final getConnectedSvc()Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;
    .registers 3

    .line 40
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    .line 43
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    return-object p0

    .line 45
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    goto :goto_23

    :cond_1a
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "AgentSvcMgr"

    const-string v1, "no FSvc"

    .line 47
    invoke-static {v0, v1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContPreserved()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 139
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getRefCount()I
    .registers 2

    .line 168
    monitor-enter p0

    .line 169
    :try_start_1
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 170
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isEnabled()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return p0
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    .line 69
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AgentSvcMgr"

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 70
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    if-eqz p0, :cond_23

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const-string/jumbo p1, "skipped action 0x%x - app cannot start"

    invoke-static {v2, p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    return-object v1

    :cond_24
    const/4 v0, 0x2

    .line 80
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_74
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_74
    .catchall {:try_start_25 .. :try_end_29} :catchall_72

    if-eqz v4, :cond_48

    :try_start_2b
    const-string v5, "FSvc is connected"

    new-array v6, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_61

    :try_start_32
    const-string/jumbo v0, "perform(execute) triggered"

    new-array v5, v3, [Ljava/lang/Object;

    .line 84
    invoke-static {v2, v0, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    invoke-interface {v4, p1, p2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 92
    :try_start_3e
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_72

    goto :goto_7f

    :catch_42
    move-exception v0

    move v5, v3

    goto :goto_77

    :catchall_45
    move-exception v0

    move v5, v3

    goto :goto_65

    .line 88
    :cond_48
    :try_start_48
    iget-object v5, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    if-eqz v5, :cond_59

    const-string v6, "failed to connect FSvc"

    new-array v7, v3, [Ljava/lang/Object;

    .line 89
    invoke-static {v2, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_48 .. :try_end_59} :catchall_61

    :cond_59
    if-eqz v4, :cond_5e

    .line 92
    :try_start_5b
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_74
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_74
    .catchall {:try_start_5b .. :try_end_5e} :catchall_72

    :cond_5e
    add-int/lit8 v0, v0, -0x1

    goto :goto_7d

    :catchall_61
    move-exception v5

    move-object v8, v5

    move v5, v0

    move-object v0, v8

    :goto_65
    if-eqz v4, :cond_6f

    .line 80
    :try_start_67
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v4

    :try_start_6c
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw v0
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_70} :catch_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_72

    :catch_70
    move-exception v0

    goto :goto_77

    :catchall_72
    move-exception p0

    goto :goto_80

    :catch_74
    move-exception v4

    move v5, v0

    move-object v0, v4

    .line 93
    :goto_77
    :try_start_77
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_72

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    :goto_7d
    if-gtz v0, :cond_25

    :goto_7f
    return-object v1

    .line 96
    :goto_80
    throw p0
.end method

.method public final resetRefCount()V
    .registers 2

    .line 174
    monitor-enter p0

    const/4 v0, 0x0

    .line 175
    :try_start_2
    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 176
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setContPreserved(Z)V
    .registers 7

    const-string v0, "AgentSvcMgr"

    const-string/jumbo v1, "setContPreserved %s => %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_20
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    .line 147
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    if-nez p1, :cond_28

    .line 149
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->resetRefCount()V

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    .line 147
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return-void
.end method
