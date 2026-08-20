.class public Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.source "SystemProxyAgent.java"


# static fields
.field public static final DAEMON_PROXY_SERVICE:Ljava/lang/String; = "DAEMON_PROXY_SERVICE"

.field public static final DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field public static final DDAR_LOG_SERVICE:Ljava/lang/String; = "DDAR_LOG_SERVICE"

.field public static final DDAR_MANAGER_SERVICE:Ljava/lang/String; = "DDAR_MANAGER_SERVICE"

.field public static final DDAR_PLATFORM_SERVICE:Ljava/lang/String; = "DDAR_PLATFORM_SERVICE"

.field public static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field public static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field public static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field public static final STATE_MACHINE_SERVICE:Ljava/lang/String; = "STATE_MACHINE_SERVICE"

.field public static final TAG:Ljava/lang/String; = "SystemProxyAgent"

.field public static final TA_PROXY_SERVICE:Ljava/lang/String; = "TA_PROXY_SERVICE"

.field public static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field public static mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    .line 57
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 65
    invoke-super {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->onCreate()V

    .line 67
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    move-result-object v0

    const-string v1, "TA_PROXY_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 68
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object v0

    const-string v1, "DAEMON_PROXY_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 69
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    move-result-object v0

    const-string v1, "STATE_MACHINE_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    move-result-object v0

    const-string v1, "DDAR_LOG_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 71
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDCache;

    move-result-object v0

    const-string v1, "DDAR_CACHE_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    move-result-object v0

    const-string v1, "DDAR_PLATFORM_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;

    move-result-object v0

    const-string v1, "DDAR_MANAGER_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;)Z

    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relay to Service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SystemProxyAgent"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, -0x1

    .line 83
    :try_start_1b
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x25e9423d

    const/4 v5, 0x1

    if-eq v2, v4, :cond_35

    const v4, 0x2897d36c

    if-eq v2, v4, :cond_2b

    goto :goto_3e

    :cond_2b
    const-string v2, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move v0, v5

    goto :goto_3e

    :cond_35
    const-string v2, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_75

    if-eqz v2, :cond_3e

    move v0, v1

    :cond_3e
    :goto_3e
    const-string v2, "dual_dar_response"

    const-string v4, "SECURE_CLIENT_ID"

    if-eqz v0, :cond_5d

    if-eq v0, v5, :cond_4b

    .line 98
    :try_start_46
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_74

    .line 92
    :cond_4b
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 93
    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 94
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_5b
    move-object p0, p1

    goto :goto_74

    .line 85
    :cond_5d
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SECURE_CLIENT_PUB_KEY"

    .line 86
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 87
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 89
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_73} :catch_75

    goto :goto_5b

    :goto_74
    return-object p0

    :catch_75
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteException: name:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " command:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
